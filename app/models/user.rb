class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :favorite_restaurants
	has_many :restaurants, through: :favorite_restaurants
  	mount_uploader :image, ImageUploader
end
