class CreateCompaniesVentureCapitalists < ActiveRecord::Migration[5.1]
  def change
    create_table :companies_venture_capitalists do |t|
      t.references :company
      t.references :venture_capitalist
    end
  end
end
