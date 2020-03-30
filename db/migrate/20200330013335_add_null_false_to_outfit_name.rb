class AddNullFalseToOutfitName < ActiveRecord::Migration[5.2]
  def up
    change_column_null :outfits, :name, false
  end
  def down
    change_column_null :outfits, :name, true
  end
end
