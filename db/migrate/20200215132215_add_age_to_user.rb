class AddAgeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :age, :smallint, null: false
  end
end
