class DestroyVentureCapitalist < GraphQL::Function
  argument :id, types.ID

  type Types::VentureCapitalistType

  def call(obj, args, ctx)
    venture_capitalist = VentureCapitalist.find_by_slug_or_id(args[:id])
    venture_capitalist.companies_venture_capitalists.destroy_all

    venture_capitalist if venture_capitalist.destroy
  end
end
