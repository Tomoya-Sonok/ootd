class RenameFromNameToTagnameOnTag < ActiveRecord::Migration[5.2]
  def change
    rename_column :tags, :name, :tagname
  end
end
