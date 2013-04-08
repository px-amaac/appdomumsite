class AppsController < ApplicationController
before_filter :authenticate_user!

	def index
    @apps = App.all
  end

  def show
    @app = App.find(params[:id])
  end

  def new
    @app = App.new
  end


  def create
		@app = current_user.apps.build(params[:app])
		if @app.save
			flash[:success] = "App Created"
			redirect_to root_url
		end
	end
  
  def update
    
    @app = App.find(params[:id])
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