class ImagesController < ApplicationController

  def index
    @title = "Images Index Page"
    @images = Image.all
  end

end
