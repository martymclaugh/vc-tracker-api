class CreateVentureCapitalists < ActiveRecord::Migration[5.1]
  def change
    create_table :venture_capitalists do |t|
      t.string :name
      t.string :affiliation
      t.string :website
      t.string :contact
      t.integer :check_size
      t.integer :investments_per_year
      t.string :status
      t.string :location
      t.string :potential
      t.text :interests

      t.timestamps
    end
  end
end
