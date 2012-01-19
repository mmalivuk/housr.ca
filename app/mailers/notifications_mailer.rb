class NotificationsMailer < ActionMailer::Base
  default :from => Message.your_email
    default :to => Message.email

    def new_message(message)
      @message = message
      mail(:subject => "#{message.your_name} thought you'd like this.")
    end
end
