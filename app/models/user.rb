class User < ApplicationRecord

  validates :username, presence: true 
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  enum gender: { man: 0, woman: 1, neutral: 2}

  mount_uploader :image, ImageUploader
  has_many :outfits
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def email_required?
    false
  end
  def email_changed?
    false
  end
end
