class NotificationsMailer < ActionMailer::Base
  default :from => "admin@housr.ca"
    default :to => @message.email

    def new_message(message)
      @message = message
      mail(:subject => "#{message.your_name} thought you'd like this.")
    end
end
