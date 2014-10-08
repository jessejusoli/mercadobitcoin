require 'rubygems'
require 'bundler'
require 'rack/test'

require 'rspec'
require 'pry-byebug'

Bundler.require(:default, :test)

require './lib/mercadobitcoin'

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
