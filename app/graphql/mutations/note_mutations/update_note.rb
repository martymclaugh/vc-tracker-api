class UpdateNote < GraphQL::Function
  argument :id, !types.ID
  argument :description, types.String

  type Types::NoteType

  def call(obj, args, ctx)
    note = Note.find(args[:id])

    note if note.update(args.to_h)
  end
end
