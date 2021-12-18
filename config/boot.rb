ENV['RACK_ENV'] ||= 'development'

require 'rubygems' unless defined?(Gem)
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)

# Load helpers
# Dir['./app/helper/*.rb'].each { |f| require f }

# Load the models
Dir['./app/model/*.rb'].each { |f| require f }

class PibApp < Sinatra::Base
  helpers Sinatra::Helpers
  helpers Sinatra::ActiveRecordHelper

  configure do
    set :sessions => true
    set :views => File.join(__dir__,'/../app/view')
  end
end

# Load the controller
Dir['./app/controller/*.rb'].each { |f| require f }
