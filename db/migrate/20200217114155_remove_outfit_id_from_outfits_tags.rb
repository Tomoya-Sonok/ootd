class RemoveOutfitIdFromOutfitsTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :outfits_tags, :outfit_id, :integer
  end
end
