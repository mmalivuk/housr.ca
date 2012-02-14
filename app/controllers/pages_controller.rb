class PagesController < ApplicationController
  def index
    render :layout => false
    @title = "home"
  end

  def about
    @title = "about housr.ca"
  end

  def find
    @title = "find a real estate agent"
  end

  def agent
    @title = "realtor's section"
  end
  
  def submitted
  end
  
  def sent_message
  end
  
  def privacy_policy
  end
  
  def terms_of_use
  end
end
