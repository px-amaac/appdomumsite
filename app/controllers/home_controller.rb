class HomeController < ApplicationController
  def index
    @users = User.all
    @androiddevs = User.with_role(:androiddev)
    @iphonedevs = User.with_role(:iphonedev)
    
    if user_signed_in?
	    @microblog = current_user.microblogs.build
	end
  end

  def mobile_apps
  	


  end

  def about
  	@users = User.all
  	@androiddevs = User.with_role(:androiddev)
    @iphonedevs = User.with_role(:iphonedev)
    @chris = User.with_role(:chris)
    @interns = User.with_role(:intern)
  end


end
