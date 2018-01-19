class UpdateVentureCapitalist < GraphQL::Function
  argument :id, !types.ID
  argument :name, types.String
  argument :position, types.Int
  argument :affiliation, types.String
  argument :website, types.String
  argument :contact, types.String
  argument :check_size, types.Int
  argument :investments_per_year, types.Int
  argument :status, types.String
  argument :location, types.String
  argument :potential, types.String
  argument :interests, types.String

  type Types::VentureCapitalistType

  def call(obj, args, ctx)
    venture_capitalist = VentureCapitalist.find_by_slug_or_id(args[:id])

    venture_capitalist if venture_capitalist.update(args.to_h)
  end
end
