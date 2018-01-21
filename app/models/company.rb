class Company < ApplicationRecord
  has_many :companies_venture_capitalists
  has_many :venture_capitalists, through: :companies_venture_capitalists
end
