class AddNullFalseToMoodName < ActiveRecord::Migration[5.2]
  def up
    change_column_null :moods, :name, false
  end
  def down
    change_column_null :moods, :name, true
  end
end
