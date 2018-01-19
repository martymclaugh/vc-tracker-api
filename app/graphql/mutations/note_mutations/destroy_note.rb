class DestroyNote < GraphQL::Function
  argument :id, !types.ID

  type Types::NoteType

  def call(obj, args, ctx)
    note = Note.find(args[:id])

    note if note.destroy
  end
end
