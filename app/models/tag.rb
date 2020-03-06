class Tag < ApplicationRecord
  has_many :outfits, dependent: :destroy
  # accepts_nested_attributes_for :outfits

  # validates_presence_of :tagname

end
