class AddTagRefToOutfitsTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :outfits_tags, :tag, foreign_key: true
  end
end
