class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :username, presence: true 
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  enum gender: { man: 0, woman: 1, neutral: 2}


  has_many :outfits
  has_many :sns_credentials
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def email_required?
    false
  end
  def email_changed?
    false
  end
end
