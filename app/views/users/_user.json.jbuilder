json.extract! user, :id, :uuid, :username, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
