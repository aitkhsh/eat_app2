class Food < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["genre", "mood"] # Specify searchable attributes
  end
end
