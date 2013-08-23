json.array!(@albums) do |album|
  json.extract! album, :user_id, :event_id, :name, :description
  json.url album_url(album, format: :json)
end