# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smsapicom/client/version'

Gem::Specification.new do |spec|
  spec.name          = "smsapicom-client"
  spec.version       = Smsapicom::Client::VERSION
  spec.authors       = ["farukcse"]
  spec.email         = ["farukncse@gmail.com"]

  spec.summary       = %q{Client library to access SMS api of smsapi.com}
  spec.homepage      = "https://github.com/farukcse/smsapicom-ruby-client.git"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday", "~> 0.10.1"
  spec.add_runtime_dependency "activesupport", "~>5.0.0"


  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
