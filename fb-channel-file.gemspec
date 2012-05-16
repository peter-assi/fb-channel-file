# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fb-channel-file/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Peter Lind"]
  gem.email         = ["peter@lind.be"]
  gem.description   = %q{Adds a /channel.html route to a Rails app. This fixes a IE7 problem with the Facebook JS SDK.
See http://developers.facebook.com/docs/reference/javascript/ and http://stackoverflow.com/questions/2955012/facebook-javascript-sdk-fb-xd-fragment}
  gem.summary       = %q{Adds a /channel.html route to a Rails app.}
  gem.homepage      = "https://github.com/peterlind/fb-channel-file"
  gem.files         = `git ls-files`.split($\)
  #gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fb-channel-file"
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency 'rails' , '>= 3.0'
  gem.add_development_dependency 'rake'
  gem.version       = FbChannelFileEngine::VERSION
end
