class AddOutfitRefToOutfitsTags < ActiveRecord::Migration[5.2]
  def change
    add_reference :outfits_tags, :outfit, foreign_key: true, type: :bigint
  end
end
