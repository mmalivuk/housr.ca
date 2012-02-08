class RenterMailer < ActionMailer::Base
  def registration_welcome(renter, user)
    @renter = renter
    @user = user
    mail(:to => @user.email, :subject => "You've received a new lead from housr.ca !", :from => "housr.ca <admin@housr.ca>")
  end
end
