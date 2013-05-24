class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :price
      t.integer :picture_id
      t.text :description

      t.timestamps
    end
  end
end
