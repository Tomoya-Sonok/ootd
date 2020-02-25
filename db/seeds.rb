# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # Tag.create!(
  #   tagname: "全てのコーデ"
  # )

  Tag.create do |t|
    t.id = 1
    t.tagname = "全てのコーデ"
    t.created_at = 2020-02-25
    t.updated_at = 2020-02-25
  end
