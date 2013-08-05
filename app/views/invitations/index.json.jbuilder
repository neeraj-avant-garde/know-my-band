json.array!(@invitations) do |invitation|
  json.extract! invitation, :user_id, :event_id, :status
  json.url invitation_url(invitation, format: :json)
end