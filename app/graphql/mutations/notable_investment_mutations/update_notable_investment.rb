class UpdateNotableInvestment < GraphQL::Function
  argument :id, !types.ID
  argument :company, types.String
  argument :amount, types.Int

  type Types::NotableInvestmentType

  def call(obj, args, ctx)
    notable_investment = NotableInvestment.find(args[:id])

    notable_investment if notable_investment.update(args.to_h)
  end
end
