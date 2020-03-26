class Outfit < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user, optional: true
  belongs_to :mood

  def self.search(search)
    if search != 1 
      Outfit.where(mood_id: search)
    else
      Outfit.where(user_id: current_user.id)
    end
  end
end
