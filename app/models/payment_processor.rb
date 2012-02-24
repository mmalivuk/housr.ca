class PaymentProcessor
  
  # used for the initial signup flow
  def self.hosted_signup_page_for(account_type, user)
    "https://#{self.subdomain}.chargify.com/h/#{self.product_id(account_type)}/subscriptions/new?first_name=#{user.first_name}&last_name=#{user.last_name}&email=#{user.email}&reference=#{user.id}"
  end
  
  # used to send a user to their unique payment page in
  # the event that they need to update their payment details
  def self.update_payment_url_for(account)
    return nil if (subscriber_id = account.chargify_subscriber_id).blank?
    "https://#{self.subdomain}.chargify.com/update_payment/#{subscriber_id}/#{self.secure_digest(["update_payment", subscriber_id, self.site_key].join("--"))[0..9]}"
  end
  
private

  def self.chargify_config
    YAML::load_file(File.join(Rails.root, 'config', 'chargify.yml'))
  end
  
  def self.site_key
    self.chargify_config[Rails.env]['site_key']
  end

  def self.subdomain
    self.chargify_config[Rails.env]['subdomain']
  end
  
  def self.product_id(account_type)
    if account_type == "monthly"
      103279
    elsif account_type == "annual"
      107396
    elsif account_type == "lifetime"
      107415
    elsif account_type == "free"
      107395
    end
  end
end