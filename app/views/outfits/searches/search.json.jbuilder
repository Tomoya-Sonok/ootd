json.array! @outfits do |outfit|
  json.id outfgtfit.id
  json.name outfit.name
  json.image outfit.image
  json.user_id outfit.user_id
  json.mood_id outfit.mood_id
  json.user_sign_in current_user
end