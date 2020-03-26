class Outfit < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  belongs_to :mood


  def self.search(search, uid)
    if search != 1 
      Outfit.where(mood_id: search).where(user_id: uid)
    else
      Outfit.where(user_id: uid)
    end
  end
end
