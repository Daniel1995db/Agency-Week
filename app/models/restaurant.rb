class Restaurant < ApplicationRecord
	has_many :menu_items
	has_many :pick_ups
	has_many :discounts
	has_many :favorite_restaurants
	has_many :users, through: :favorite_restaurants
end
