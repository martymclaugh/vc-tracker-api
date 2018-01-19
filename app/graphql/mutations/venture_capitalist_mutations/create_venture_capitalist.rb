class CreateVentureCapitalist < GraphQL::Function
  argument :name, !types.String
  argument :position, !types.Int
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
    slug = args[:name].gsub!(/[^0-9A-Za-z]/, ' ').downcase.split(' ').join('-');

    VentureCapitalist.create!(args.to_h.merge(slug: slug))
  end
end
