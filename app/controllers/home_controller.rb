class HomeController < ApplicationController
  def index
    @users = User.all
    @androiddev = User.first
    if user_signed_in?
	    @microblog = current_user.microblogs.build
	end
    


  end
end
