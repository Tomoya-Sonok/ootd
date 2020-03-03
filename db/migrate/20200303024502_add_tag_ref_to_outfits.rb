class AddTagRefToOutfits < ActiveRecord::Migration[5.2]
  def change
    add_reference :outfits, :tag, foreign_key: true, type: :bigint
  end
end
