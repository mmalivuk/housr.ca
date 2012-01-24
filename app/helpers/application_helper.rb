module ApplicationHelper
  def full_title(page_title)
    base_title = "housr.ca - Find a Real Estate Agent in the Greater Toronto and Kingston Areas"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
