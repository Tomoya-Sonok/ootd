class ChangeOutfits < ActiveRecord::Migration[5.2]
  def change
    change_column_null :outfits, :name, false
    change_column_null :outfits, :image, false
  end
end
