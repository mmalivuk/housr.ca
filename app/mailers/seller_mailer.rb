class SellerMailer < ActionMailer::Base
  def registration_welcome(seller, user)
    @seller = seller
    @user = user
    mail(:to => @user.email, :subject => "You've received a new lead from housr.ca !", :from => "admin@housr.ca")
  end
end