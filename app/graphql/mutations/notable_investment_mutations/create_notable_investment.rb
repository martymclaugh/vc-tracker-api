class CreateNotableInvestment < GraphQL::Function
  argument :venture_capitalist_id, !types.ID
  argument :company, !types.String
  argument :amount, !types.Int

  type Types::NotableInvestmentType

  def call(obj, args, ctx)
    venture_capitalist = VentureCapitalist.find(args[:venture_capitalist_id])
    notable_investment = NotableInvestment.create!(args.to_h)
    notable_investment if venture_capitalist.notable_investments << notable_investment
  end
end
