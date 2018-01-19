Types::CompanyType = GraphQL::ObjectType.define do
  name 'Company'

  field :id, !types.ID
  field :slug, !types.String
  field :name, !types.String
  field :description, !types.String
  field :budget, !types.Int
  field :raised, !types.Int
  field :timeline, !Types::DateType
  field :ventureCapitalists do
    type !types[Types::VentureCapitalistType]
    argument :size, types.Int, default_value: 20
    argument :number, types.Int, default_value: 1
    resolve -> (company, args, ctx) {
      company.venture_capitalists.limit(args[:size])
    }
  end
end
