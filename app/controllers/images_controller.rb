class ImagesController < ApplicationController

  def index
    @title = "Images Index Page"
    @images = Image.all
    @id = Gallery.find(params[:param])


  end

end
