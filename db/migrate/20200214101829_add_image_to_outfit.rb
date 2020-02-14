class AddImageToOutfit < ActiveRecord::Migration[5.2]
  def change
    add_column :outfits, :image, :string
  end
end
