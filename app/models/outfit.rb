class Outfit < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :outfits_tags, dependent: :destroy
  has_many :tags, through: :outfits_tags, dependent: :destroy
  accepts_nested_attributes_for :tags, allow_destroy: true

  # validates :image, uniqueness: true, null: false
  validates :name, uniqueness: true, null: false
end
