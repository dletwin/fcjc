class GalleriesController < ApplicationController
  def index
    @title = "Galleries Index Page"
  end

  def new
    @title = "Galleries New Page"
  end

  def show
    @title = "Galleries Show Page"
  end
end
