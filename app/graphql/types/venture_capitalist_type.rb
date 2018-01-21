Types::VentureCapitalistType = GraphQL::ObjectType.define do
  name 'VentureCapitalist'

  field :id, !types.ID
  field :slug, types.String
  field :position, types.Int
  field :name, !types.String
  field :affiliation, !types.String
  field :website, !types.String
  field :contact, !types.String
  field :check_size, !types.Int
  field :investments_per_year, !types.Int
  field :status, !types.String
  field :location, !types.String
  field :potential, !types.String
  field :interests, !types.String
  field :updated_at, !Types::DateType
  field :notes do
    type !types[Types::NoteType]
    resolve -> (venture_capitalist, args, ctx) {
      venture_capitalist.notes
    }
  end
  field :notableInvestments do
    type !types[Types::NotableInvestmentType]
    resolve -> (venture_capitalist, args, ctx) {
      venture_capitalist.notable_investments
    }
  end
end
