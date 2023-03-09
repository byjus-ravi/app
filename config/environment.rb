# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.logger = Logger.new(STDOUT)
config.logger = ActiveSupport::Logger.new("log/#{Rails.env}.log")
Rails.application.initialize!
