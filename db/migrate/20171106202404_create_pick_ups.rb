class CreatePickUps < ActiveRecord::Migration[5.1]
  def change
    create_table :pick_ups do |t|
      t.integer :status
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
