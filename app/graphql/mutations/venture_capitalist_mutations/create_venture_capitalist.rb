class CreateVentureCapitalist < GraphQL::Function
  argument :companyId, !types.ID
  argument :slug, types.String
  argument :name, !types.String
  argument :position, types.Int
  argument :affiliation, !types.String
  argument :website, !types.String
  argument :contact, !types.String
  argument :check_size, !types.Int
  argument :investments_per_year, !types.Int
  argument :status, !types.String
  argument :location, !types.String
  argument :potential, !types.String
  argument :interests, !types.String

  type Types::VentureCapitalistType


  def call(obj, args, ctx)
    slug = args[:name].gsub(/[^0-9A-Za-z]/, ' ').downcase.gsub(/\s/,'-')
    company = Company.find_by_slug_or_id(args[:companyId])
    args.to_h.delete('companyId')

    vc = VentureCapitalist.create!(args.to_h.merge(slug: slug))
    company.venture_capitalists << vc
    return vc
  end
end
