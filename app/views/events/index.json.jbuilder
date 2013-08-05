json.array!(@events) do |event|
  json.extract! event, :user_id, :title, :description, :start_time, :end_time, :full_address, :latitude, :longitude, :repeat, :status
  json.url event_url(event, format: :json)
end