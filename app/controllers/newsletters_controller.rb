class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletter.all
  end

  def show
    @title = "FCJC Families Matter Newsletter"
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      redirect_to newsletters_path
    else
      render 'new'
    end
  end

  private
    def newsletter_params
      params.require(:newsletter).permit(:title, :month, :year)
    end

end
