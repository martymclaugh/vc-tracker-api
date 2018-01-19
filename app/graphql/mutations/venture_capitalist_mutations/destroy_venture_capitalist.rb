class DestroyVentureCapitalist < GraphQL::Function
  argument :id, !types.ID

  type Types::VentureCapitalistType

  def call(obj, args, ctx)
    venture_capitalist = VentureCapitalist.find(args[:id])

    venture_capitalist if venture_capitalist.destroy
  end
end
