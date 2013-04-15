class AppsController < ApplicationController
skip_before_filter :authenticate_user!, :only => [ :index ] 

	def index
    @apps = App.all
  end

  def show
    @app = App.find(params[:id])
  end

  def new
    @app = App.new
    4.times { @app.app_screenshots.build }
  end


  def create
		@app = current_user.apps.build(params[:app])

		if @app.save
			flash[:notice] = "App Created"
			redirect_to root_url
		end
	end
  
  def edit
    @app = current_user.apps.find_by_id(params[:id])
  end


  def update
    @app = current_user.apps.find(params[:id])
    if @app.update_attributes(params[:app])
      redirect_to apps_path, :notice => "App Updated."
    else
      redirect_to apps_path, :alert => "Unable to update App."
    end
  end

    
  def destroy
	    @app = current_user.apps.find_by_id(params[:id])
	    redirect_to root_url if @app.nil?
	else
		@app.destroy
		redirect_to apps_path
	end
end