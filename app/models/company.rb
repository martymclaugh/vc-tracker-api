class Company < ApplicationRecord
  has_and_belongs_to_many :venture_capitalists
end
