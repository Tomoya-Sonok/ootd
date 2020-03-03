class DeleteOutfitstag < ActiveRecord::Migration[5.2]
  def change
    drop_table :outfits_tags
  end
end
