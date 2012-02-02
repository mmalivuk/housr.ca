class SellerMailer < ActionMailer::Base
  def distribute(seller, user)
    @seller = seller
    mail(:to => user.email, :subject => "You've received a new lead from housr.ca !", :from => "admin@housr.ca")
  end
end