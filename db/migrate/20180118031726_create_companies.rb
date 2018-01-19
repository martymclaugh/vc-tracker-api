class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :slug
      t.string :name
      t.integer :budget
      t.integer :raised, default: 0
      t.date :timeline
      t.text :description

      t.timestamps
    end
  end
end
