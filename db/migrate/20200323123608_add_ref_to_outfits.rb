class AddRefToOutfits < ActiveRecord::Migration[5.2]
  def change
    add_reference :outfits, :mood, foreign_key: true
  end
end
