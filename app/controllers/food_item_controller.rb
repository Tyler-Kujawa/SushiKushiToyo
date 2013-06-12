class FoodItemController < ApplicationController
  def menu
		@lunch_items = [
											{:name => 'Bento Box', :price => '10.99', :image =>'bento-box.jpg', :description => ""}, 
											{:name => 'Chirashi', :price => '15.99', :image =>'chirashi.jpg', :description => ""},
											{:name => 'Yaki Zakana', :price => '9.99', :image =>'yaki-zakana.jpg', :description => ""},
											{:name => 'Katsudon', :price => '7.99', :image =>'katsudon.jpg', :description => ""}
										]
		@sushi_items = [
											{:name => 'Ama-Ebi(Sweet Shrimp)', :price => '3.75', :image =>'ama-ebi.jpg', :description => ""}, 
											{:name => 'Maguro(Tuna)', :price => '2.00', :image =>'maguro.jpg', :description => ""},
											{:name => 'Anago(Sea Eel)', :price => '2.50', :image =>'anago.jpg', :description => ""},
											{:name => 'Hamachi(Yellow Tail)', :price => '3.00', :image =>'hamachi.jpg', :description => ""}
										]
		@all_items = @lunch_items.zip(@sushi_items).flatten.compact
	
	end
end
