json.extract! user, :id, :fname, :lname, :photo, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
