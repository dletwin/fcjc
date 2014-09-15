class NewslettersController < ApplicationController

  def index
    @title = "FCJC Families Matter Newsletter"
    @newsletters = Newsletter.all
  end

  def new
    @title = "Add a newsletter"
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      redirect_to newsletters_path, notice: "Newsletter named #{@newsletter.title}
        has been successfully uploaded"
    else
      render 'new'
    end
  end

  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy
    redirect_to newsletters_path, notice: "Newsletter named #{@newsletter.title}
      has been successfully deleted"
  end

  def show
    @title = "FCJC Families Matter Newsletter"
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:title, :month, :year, :attachment)
  end

  end
