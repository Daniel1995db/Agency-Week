class Restaurant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :menu_items
	has_many :pick_ups
	has_many :discounts
	has_many :favorite_restaurants
	has_many :users, through: :favorite_restaurants
end
