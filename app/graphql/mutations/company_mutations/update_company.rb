class UpdateCompany < GraphQL::Function
  argument :id, types.ID
  argument :name, types.String
  argument :description, types.String
  argument :budget, types.Int
  argument :raised, types.Int
  argument :timeline, Types::DateType

  type Types::CompanyType

  def call(obj, args, ctx)
    company = Company.find_by_slug_or_id(args[:id])
    slug = args[:name].gsub(/[^0-9A-Za-z]/, ' ').downcase.gsub(/\s/,'-')

    company if company.update(args.to_h.merge(slug: slug, id: company.id))
  end
end
