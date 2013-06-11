class MainContentController < ApplicationController
  def home
		respond_to do |format|
		format.html
		format.mobile
		end
  end

  def contact
  end
  
  def coming_soon
  end
end
