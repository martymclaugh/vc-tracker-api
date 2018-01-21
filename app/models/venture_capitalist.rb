class VentureCapitalist < ApplicationRecord
  has_many :companies_venture_capitalists
  has_many :companies, through: :companies_venture_capitalists
  has_many :notes
  has_many :notable_investments
end
