class Mood < ApplicationRecord
  has_many :outfits, dependent: nullify
  belongs_to :user

  validates :name, presence: true
end