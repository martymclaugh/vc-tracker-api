Types::NotableInvestmentType = GraphQL::ObjectType.define do
  name 'NotableInvestment'

  field :id, !types.ID
  field :company, !types.String
  field :amount, !types.Int
end
