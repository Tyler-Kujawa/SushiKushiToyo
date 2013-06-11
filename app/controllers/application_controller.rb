class ApplicationController < ActionController::Base
  protect_from_forgery
	before_filter :prepare_for_mobile
	
	#checks if user's brower is mobile
	def is_mobile?
		request.user_agent =~ /Mobile/
	end
	
	def prepare_for_mobile
		request.format = :mobile if is_mobile?
	end
	
	helper_method :is_mobile?
end
