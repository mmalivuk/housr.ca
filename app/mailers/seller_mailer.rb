class SellerMailer < ActionMailer::Base
  def registration_confirmation(seller)
    users = User.random(5)
    
    users.each do |user|
      mail(:to => user.email, :subject => "Here's your lead.", :from => "admin@housr.ca")
    end
  end
end