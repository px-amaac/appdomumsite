class HomeController < ApplicationController
  def index
    @users = User.all
    @androiddev = User.first
    @iphonedev = User.find_by_id(2)
    if user_signed_in?
	    @microblog = current_user.microblogs.build
	end
  end
end
