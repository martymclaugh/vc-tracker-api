Types::CompanyType = GraphQL::ObjectType.define do
  name 'Company'

  field :id, !types.ID
  field :slug, !types.String
  field :name, !types.String
  field :description, !types.String
  field :budget, !types.Int
  field :raised, !types.Int
  field :timeline, !Types::DateType
  field :updated_at, !Types::DateType
  field :ventureCapitalists do
    type !types[Types::VentureCapitalistType]
    argument :size, types.Int, default_value: 20
    argument :number, types.Int, default_value: 1
    argument :order_by, types.String, default_value: 'id'
    argument :ascending, types.String, default_value: 'ASC'

    resolve -> (company, args, ctx) {
      company.venture_capitalists.limit(args[:size]).order("#{args[:order_by]} #{args[:ascending]}")
    }
  end
end
