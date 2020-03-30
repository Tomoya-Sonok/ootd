class Mood < ApplicationRecord
  has_many :outfits

  validates :name, presence: true
end