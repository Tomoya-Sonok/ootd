class RemoveTagIdFromOutfitsTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :outfits_tags, :tag_id, :integer
  end
end
