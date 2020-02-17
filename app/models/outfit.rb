class Outfit < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :outfits_tags
  has_many :tags, through: :outfits_tags
  accepts_nested_attributes_for :tags
end
