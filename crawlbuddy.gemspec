# -*- encoding: utf-8 -*-
require File.expand_path('../lib/crawlbuddy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brandon Hansen"]
  gem.email         = ["brandonh@ibethel.org"]
  gem.description   = %q{Crawl and index the web}
  gem.summary       = %q{An experiment into crawling and parsing as described at http://goo.gl/3MW3x}
  gem.homepage      = "http://github.com/ready4god2513/crawlbuddy"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "crawlbuddy"
  gem.require_paths = ["lib"]
  gem.version       = Crawlbuddy::VERSION
  
  gem.add_dependency("robots")
  gem.add_dependency("redis")
end
