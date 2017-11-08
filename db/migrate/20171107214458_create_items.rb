class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item
      t.integer :price
      t.integer :starting_range
      t.integer :ending_range
      t.string :description
      t.references :menu_item, foreign_key: true
      t.timestamps
    end
  end
end
