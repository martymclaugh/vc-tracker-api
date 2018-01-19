class DestroyCompany < GraphQL::Function
  argument :id, !types.ID

  type Types::CompanyType

  def call(obj, args, ctx)
    company = Company.find_by_slug_or_id(args[:id])

    company if company.destroy
  end
end
