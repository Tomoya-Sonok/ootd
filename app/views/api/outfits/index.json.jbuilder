json.outfit do 
  json.image @outfit.image.url
  json.name @outfit.name
  json.id @outfit.id
  json.user_id @outfit.user_id
end