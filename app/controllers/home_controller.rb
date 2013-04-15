class HomeController < ApplicationController
  def index
    @users = User.all
    @chris = User.with_role(:chris)
    @androiddevs = User.with_role(:androiddev)
    @iphonedevs = User.with_role(:iphonedev)
    
    if user_signed_in?
	    @microblog = current_user.microblogs.build
	end
  end

  def about
  	@users = User.all
  	@androiddevs = User.with_role(:androiddev)
    @iphonedevs = User.with_role(:iphonedev)
    @chris = User.with_role(:chris)
    @interns = User.with_role(:intern)
  end

  def dispatch_email
    user_info = params[:user_info]
    if ContactMailer.send_email(user_info).deliver
      flash[:notice] = "Sent! We will get back to you shortly."
    else
      flash[:notice] = "Could Not Send Your Contact Form."
    end
    redirect_to root_path
  end



end
