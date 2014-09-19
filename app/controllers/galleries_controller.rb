class GalleriesController < ApplicationController

  def index
    @title = "Galleries Index Page"
    @galleries = Gallery.all
  end

  def new
    @title = "Galleries New Page"
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      redirect_to galleries_path, notice: "Gallery named #{@gallery.name} #{@gallery.date}
      has been successfully created"
    else
      render 'new'
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])

    @gallery.destroy
    redirect_to galleries_path, notice: "Gallery named #{@gallery.name} #{@gallery.date}
    has been successfully deleted"
  end

  def show
    @title = "Galleries Show Page"
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :date)
  end

end
