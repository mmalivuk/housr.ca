class MessageMailer < ActionMailer::Base
  default :to => "admin@housr.ca"
  
  def contact_housr(message)
    @message = message
    mail(:from => @message.your_email, :subject => "Contact Form: #{@message.subject}")
  end
end
