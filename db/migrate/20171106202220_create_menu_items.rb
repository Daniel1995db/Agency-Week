class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :item
      t.integer :price
      t.integer :starting_range
      t.integer :ending_range
      t.string :category
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end