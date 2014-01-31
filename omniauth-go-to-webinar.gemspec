# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-go-to-webinar/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Victor Andrey"]
  gem.email         = ["victor@wishpond.com"]
  gem.description   = %q{An OmniAuth strategy for GoToWebinar.}
  gem.summary       = %q{An OmniAuth strategy for GoToWebinar.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-go-to-webinar"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::GoToWebinar::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
end