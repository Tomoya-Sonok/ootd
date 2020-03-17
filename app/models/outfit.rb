class Outfit < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  # belongs_to :tag
  # accepts_nested_attributes_for :tags, allow_destroy: true

  # validates :image, uniqueness: true, null: false
end
