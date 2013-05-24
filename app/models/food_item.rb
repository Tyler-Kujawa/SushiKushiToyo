class FoodItem < ActiveRecord::Base
  attr_accessible :description, :name, :picture_id, :price
end
