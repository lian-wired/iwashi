# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'table_builder/version'

Gem::Specification.new do |gem|
  gem.name          = "table_builder"
  gem.version       = TableBuilder::VERSION
  gem.authors       = ["h-akabane"]
  gem.email         = ["h-akabane@moist-corp.jp"]
  gem.description   = %q{table builder}
  gem.summary       = %q{table builder_}
  gem.homepage      = "http://donuthole.org"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activesupport'
  gem.add_dependency 'erubis'
end
