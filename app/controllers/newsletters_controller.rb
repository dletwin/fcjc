class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletter.all
  end

  def show
    @title = "FCJC Families Matter Newsletter"
    @newsletter = Newsletter.find(params[:id])
  end

  def new
    @title ="Add a Newsletter"
  end

  def create
     @newsletter = Newsletter.new(newsletter_params)

     @newsletter.save
     redirect_to @newsletter
  end

  private
    def newsletter_params
      params.require(:newsletter).permit(:title, :month, :year)
    end

end
