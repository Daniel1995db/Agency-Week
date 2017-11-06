class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :cname
      t.string :address
      t.integer :number
      t.attachment :photo
      t.refereneces :menu_item
      t.float :longitude
      t.float :langitude

      t.timestamps
    end
  end
end
