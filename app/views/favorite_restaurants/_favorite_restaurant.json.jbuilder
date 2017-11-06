json.extract! favorite_restaurant, :id, :user_id, :restaurant_id, :created_at, :updated_at
json.url favorite_restaurant_url(favorite_restaurant, format: :json)
