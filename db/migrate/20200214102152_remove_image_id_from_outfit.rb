class RemoveImageIdFromOutfit < ActiveRecord::Migration[5.2]
  def change
    remove_column :outfits, :image_id, :string
  end
end
