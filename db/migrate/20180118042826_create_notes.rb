class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :venture_capitalist
      t.text :description

      t.timestamps
    end
  end
end
