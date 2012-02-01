class SellerMailer < ActionMailer::Base
  def registration_confirmation(seller)
    users = User.random(5)
    @seller = seller
    
    users.each do |user|
      mail(:to => user.email, :subject => "You've received a new lead from housr.ca !", :from => "admin@housr.ca")
      @seller.times_forwarded += 1
    end
  end
end