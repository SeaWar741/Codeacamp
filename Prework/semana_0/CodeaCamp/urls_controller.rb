class UrlsController < ApplicationController
  def index
    @url = Url.new
    @urls = Url.all
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to urls_path
    else
      render 'index'
    end
  end
private 
  def url_params
    params.require(:url).permit(:long_url, click_count: 0)
  end
end
