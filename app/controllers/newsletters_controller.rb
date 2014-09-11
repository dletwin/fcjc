class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      redirect_to newsletters_path, notice: "The newsletter #{@newsletter.title} has been uploaded"
    else
      render 'new'
    end
  end

  def destroy
    @newsletter =Newsletter.find(params[:id])
    @newsletter.destroy
    redirect_to newsletter_path, notice: "The newsletter #{@newsletter.title} has been deleted"
  end

  def show
    @title = "FCJC Families Matter Newsletter"
  end

  private
    def newsletter_params
      params.require(:newsletter).permit(:title, :month, :year, :attachment)
    end
  end
