# Set up email server using Gmail

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => :true,
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "housr.ca" ,
    :authentication => :plain,
    :user_name => "admin" ,
    :password => "mississauga",
    :tls => :true
  }