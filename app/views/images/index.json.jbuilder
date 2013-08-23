json.array!(@images) do |image|
  json.extract! image, :user_id, :event_id, :album_id, :image, :title, :caption, :is_profile_photo
  json.url image_url(image, format: :json)
end