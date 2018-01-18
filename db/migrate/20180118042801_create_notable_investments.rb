class CreateNotableInvestments < ActiveRecord::Migration[5.1]
  def change
    create_table :notable_investments do |t|
      t.references :venture_capitalist
      t.string :company
      t.integer :amount

      t.timestamps
    end
  end
end
