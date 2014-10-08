# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mercadobitcoin/version'

Gem::Specification.new do |spec|
  spec.name          = "mercadobitcoin"
  spec.version       = MercadoBitcoin::VERSION
  spec.authors       = ["Bruno Buccolo"]
  spec.email         = ["bruno.buccolo@gmail.com"]
  spec.summary       = %q{Unofficial wrapper for mercadobitcoin.com.br}
  spec.description   = %q{Unofficial wrapper for the MercadoBitcoin exchange API}
  spec.homepage      = "https://github.com/buccolo/mercadobitcoin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rack-test", "~> 0.6"
  spec.add_development_dependency "pry-byebug", "~> 2.0"

  spec.add_dependency "httparty", "~> 0.13"
  spec.add_dependency "ruby-hmac", "~> 0.4"
  spec.add_dependency "activesupport", "~> 4.1"
end
