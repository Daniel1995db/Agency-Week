class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :favorite_restaurants, :dependent => :destroy
	has_many :restaurants, through: :favorite_restaurants, :dependent => :destroy
  	mount_uploader :image, ImageUploader

  	enum status: [:customer, :administrator]
end
