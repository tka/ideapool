require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  config.asset_host = Settings.assets_host
end
