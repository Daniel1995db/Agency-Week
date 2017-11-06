json.extract! restaurant, :id, :cname, :address, :number, :photo, :menu, :longitude, :langitude, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
