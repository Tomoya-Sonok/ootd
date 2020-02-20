class ChangeTags < ActiveRecord::Migration[5.2]
  def change
    change_column_null :tags, :tagname, false
  end
end
