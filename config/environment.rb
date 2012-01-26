# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Boot::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "app2026294@heroku.com",
  :password => "tkbdyefd",
  :domain => "housr.ca",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}