class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_many :items, :dependent => :destroy
  accepts_nested_attributes_for :items, allow_destroy: :true
end