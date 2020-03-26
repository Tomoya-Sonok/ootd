json.array! @outfits do |outfit|
  json.id outfit.id
  json.name outfit.name
  json.image outfit.image.to_s
  json.user_id outfit.user_id
  json.mood_id outfit.mood_id
  json.user_sign_in current_user
  json.moodName outfit.mood.name
end