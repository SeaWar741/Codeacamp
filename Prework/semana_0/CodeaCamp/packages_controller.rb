class PackagesController < ApplicationController
  def index
     
  end

  def create
    @user_package = package_params
    if logged_in?
      redirect_to controller: 'tickets', action: 'index', params: @user_package
    else
      redirect_to login_url
    end
    
  end

  private

    def package_params
      params.require(:package).permit!
    end
end
