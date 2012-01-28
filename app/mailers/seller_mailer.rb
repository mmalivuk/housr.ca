class SellerMailer < ActionMailer::Base
  def registration_confirmation(seller)
    @user = User.random
    mail(:to => seller.email, :subject => "Success! Keep an eye out for proposals.", :from => "admin@housr.ca")
  end
end