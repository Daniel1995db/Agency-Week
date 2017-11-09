class Restaurant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :menu_items, :dependent => :destroy
	has_many :pick_ups, :dependent => :destroy
	has_many :discounts, :dependent => :destroy
	has_many :favorite_restaurants, :dependent => :destroy
	has_many :users, through: :favorite_restaurants, :dependent => :destroy
	mount_uploader :image, ImageUploader

end