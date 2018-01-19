Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  # Company Mutations
  field :createCompany, function: CreateCompany.new
  field :updateCompany, function: UpdateCompany.new
  field :destroyCompany, function: DestroyCompany.new

  # VentureCapitalist Mutations
  field :createVentureCapitalist, function: CreateVentureCapitalist.new
  field :updateVentureCapitalist, function: UpdateVentureCapitalist.new
  field :destroyVentureCapitalist, function: DestroyVentureCapitalist.new

  # NotableInvestment Mutations
  field :createNotableInvestment, function: CreateNotableInvestment.new
  field :updateNotableInvestment, function: UpdateNotableInvestment.new
  field :destroyNotableInvestment, function: DestroyNotableInvestment.new

  # Note Mutations
  field :createNote, function: CreateNote.new
  field :updateNote, function: UpdateNote.new
  field :destroyNote, function: DestroyNote.new

end
