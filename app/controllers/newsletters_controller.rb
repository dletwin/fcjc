class NewslettersController < ApplicationController

  def index
  end

  def show
    @title = "FCJC Families Matter Newsletter"
  end

  def new
    @title ="Add a Newsletter"
  end

end
