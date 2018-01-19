class DestroyNotableInvestment < GraphQL::Function
  argument :id, !types.ID

  type Types::NotableInvestmentType

  def call(obj, args, ctx)
    notable_investment = NotableInvestment.find(args[:id])

    notable_investment if notable_investment.destroy
  end
end
