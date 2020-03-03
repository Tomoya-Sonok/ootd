class ChangeOutfit < ActiveRecord::Migration[5.2]
  def change
    change_column_null :outfits, :name, from: false, to: true
  end
end
