json.array!(@users) do |user|
  json.extract! user, :email, :membership_type, :first_name, :last_name, :facebook_id, :is_confirmed, :is_active, :is_banned, :activation_hash
  json.url user_url(user, format: :json)
end