class BuyerMailer < ActionMailer::Base
  def registration_welcome(buyer, user)
    @buyer = buyer
    @user = user
    mail(:to => @user.email, :subject => "You've received a new lead from housr.ca !", :from => "housr.ca <admin@housr.ca>")
  end
end
