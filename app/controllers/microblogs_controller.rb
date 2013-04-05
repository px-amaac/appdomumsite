class MicroblogsController < ApplicationController
	before_filter :authenticate_user!

	def create
		@microblog = current_user.microblogs.build(params[:microblog])
		if @microblog.save
			flash[:success] = "Blog Posted"
			redirect_to root_url
		end
	end

	def destroy
		@microblog = current_user.microblogs.find_by_id(params[:id])
		redirect_to root_url if @microblog.nil?
	else
		@microblog.destroy
		redirect_to root_url
	end
end

	

