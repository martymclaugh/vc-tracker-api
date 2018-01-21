class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.find_by_slug_or_id(id)
    find_by(slug: id) || self.find(id)
  end
end
