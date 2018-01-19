class CreateNote < GraphQL::Function
  argument :venture_capitalist_id, !types.ID
  argument :description, !types.String

  type Types::NoteType

  def call(obj, args, ctx)
    venture_capitalist = VentureCapitalist.find(args[:venture_capitalist_id])
    note = Note.create!(args.to_h)
    note if venture_capitalist.notes << note
  end
end
