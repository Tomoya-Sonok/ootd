class Tag < ApplicationRecord
  has_many :outfits_tags, dependent: :destroy
  has_many :outfits, through: :outfits_tags, dependent: :destroy
end
