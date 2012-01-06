class PagesController < ApplicationController
  def index
    render :layout => false
    @title = "home"
  end

  def about
    @title = "about housr.ca"
  end

  def buy
    @title = "buyers form"
  end

  def sell
    @title = "sellers form"
  end

  def rent
    @title = "renters form"
  end

  def find
    @title = "find a real estate agent"
  end

  def contact
    @title = "contact us"
  end

  def agent
    @title = "realtor's section"
  end

end
