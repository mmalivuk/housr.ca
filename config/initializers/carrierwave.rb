CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAIQFDGFSWHSBAS3YQ',
      :aws_secret_access_key  => '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'
    }
    config.fog_directory  = 'housr'
  end