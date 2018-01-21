class CreateCompany < GraphQL::Function
  argument :name, !types.String
  argument :description, !types.String
  argument :budget, !types.Int
  argument :raised, types.Int
  argument :timeline, !Types::DateType

  type Types::CompanyType

  def call(obj, args, ctx)
    slug = args[:name].gsub(/[^0-9A-Za-z]/, ' ').downcase.gsub(/\s/,'-')

    Company.create!(args.to_h.merge(slug: slug))
  end
end
