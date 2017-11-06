class CreateFavoriteRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_restaurants do |t|
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
