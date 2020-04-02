class Mood < ApplicationRecord
  has_many :outfits
  belongs_to :user

  validates :name, presence: true
end