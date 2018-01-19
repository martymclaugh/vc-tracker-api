class VentureCapitalist < ApplicationRecord
  has_and_belongs_to_many :companies
  has_many :notes
  has_many :notable_investments
end
