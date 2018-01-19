Types::NoteType = GraphQL::ObjectType.define do
  name 'Note'

  field :id, !types.ID
  field :description, !types.String
end
