class DestroyCompany < GraphQL::Function
  argument :id, types.ID

  type Types::CompanyType

  def call(obj, args, ctx)
    company = Company.find_by_slug_or_id(args[:id])
    company.companies_venture_capitalists.destroy_all

    company if company.destroy
  end
end
