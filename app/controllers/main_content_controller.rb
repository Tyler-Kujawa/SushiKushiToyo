class MainContentController < ApplicationController
  def home
		@user = User.new
		@reviews = [
									{:name => 'Rebecca', :review_text => "This is where I grew to
									fall passionally in love with sushi. It will always hold a 
									special place in my heart. I came here frequently throughout 
									middle school and high school and college breaks. I even trek 
									from the city to the suburbs to get my favorite sushi. It's 
									a staple for birthday dinners with my family and even a quick 
									bite to get for lunch.", :image => 'rebeca.jpg'},
									{:name => 'Ben', :review_text => "Fantastic! Loved that they 
									have a chef's selection of the day. The hand roll was 
									incredibly imaginative and utterly delicious. Also, every piece 
									of nigiri I tried was spectacular. I appreciated the 
									opportunity to try things that weren't even on the menu...a 
									real benefit of sitting at the sushi bar and chatting with the 
									chef.", :image => 'ben.jpg'}
								]
		
		
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
