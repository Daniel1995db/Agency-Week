json.extract! menu_item, :id, :item, :price, :range, :category, :restaurant_id, :created_at, :updated_at
json.url menu_item_url(menu_item, format: :json)
