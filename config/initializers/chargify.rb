require 'chargify_api_ares'

begin
  
  # loads in the data from the YAML file in the config directory
  chargify_config = YAML::load_file(File.join(Rails.root, 'config', 'chargify.yml'))
  
  # configure Chargify for the existing Rails environment
  Chargify.configure do |c|
    c.subdomain = chargify_config[Rails.env]['subdomain']
    c.api_key = chargify_config[Rails.env]['api_key']
  end

rescue
  nil
end