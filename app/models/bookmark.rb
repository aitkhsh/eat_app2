class Bookmark < ApplicationRecord
  belongs_to :user
  
  validates :place_id, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
