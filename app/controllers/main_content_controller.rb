class MainContentController < ApplicationController
  def home
		@user = User.new
		
		
		respond_to do |format|
			format.js{
				if session[:user_id]
					@user = User.find(session[:user_id])
				end
			}
			format.html
			format.mobile
		end
  end

  def contact
  end
  
  def coming_soon
		respond_to do |format|
			format.html
			format.js
		end
  end
  
  def create
		@user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to 'home'} 
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { redirect_to 'contact' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
	
	def more
	
	end
end
