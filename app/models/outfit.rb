class Outfit < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  belongs_to :mood

  validates :image, presence: true
  validates :name, presence: true
  validates :mood_id, presence: true

  def self.search(search, uid)
    if search.present?
      Outfit.where(mood_id: search).where(user_id: uid)
    else
      Outfit.where(user_id: uid)
    end
  end
end
