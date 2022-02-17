# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/redmine/version'

Gem::Specification.new do |spec|
  spec.add_dependency 'omniauth', '~> 2.0'

  spec.name          = "omniauth-redmine"
  spec.version       = Omniauth::Redmine::VERSION
  spec.authors       = ["suer"]
  spec.email         = ["suetsugu.r@gmail.com"]
  spec.description   = %q{An OmniAuth strategy for Redmine}
  spec.summary       = %q{An OmniAuth strategy for Redmine}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth'
  spec.add_runtime_dependency 'multi_json'

  spec.add_development_dependency "bundler", "~> 2.3"
  spec.add_development_dependency "rake"
end
