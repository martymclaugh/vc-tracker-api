class CompaniesVentureCapitalist < ApplicationRecord
  belongs_to :venture_capitalist
  belongs_to :company
end
