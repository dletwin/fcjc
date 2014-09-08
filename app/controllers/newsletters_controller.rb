class NewslettersController < ApplicationController

  def newsletter
    @newsletters = Newsletters.new
  end

end
