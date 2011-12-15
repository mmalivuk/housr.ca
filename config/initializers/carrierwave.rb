CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.s3_access_key_id = ENV['AKIAIQFDGFSWHSBAS3YQ']
  config.s3_secret_access_key = ENV['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']
  config.s3_bucket = ENV['housr']
end