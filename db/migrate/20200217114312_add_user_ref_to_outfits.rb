class AddUserRefToOutfits < ActiveRecord::Migration[5.2]
  def change
    add_reference :outfits, :user, foreign_key: true, type: :bigint
  end
end
