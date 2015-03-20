class GalleriesController < ApplicationController

  def index
    @title = "Galleries Index Page"

    if (Gallery.all.count > 0)
      @galleries = Gallery.all.order( 'galleries.created_at ASC' )
    else
      @galleries = Gallery.all
    end
  end

  def new
    @title = "Galleries New Page"
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      redirect_to galleries_path, notice: "Gallery named #{@gallery.name} #{@gallery.month}
       #{@gallery.day}, #{@gallery.year} has been successfully created"
    else
      render 'new'
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])

    @gallery.destroy
    redirect_to galleries_path, notice: "Gallery named #{@gallery.name} #{@gallery.month}
    #{@gallery.day},  #{@gallery.year} has been successfully deleted"
  end

  def show
    @title = "Galleries Show Page"
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :month, :day, :year)
  end

end
