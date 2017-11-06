class CreateDiscounts < ActiveRecord::Migration[5.1]
  def change
    create_table :discounts do |t|
      t.integer :time_frame #in minutes
      t.string :description
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
