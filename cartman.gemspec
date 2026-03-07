# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cartman/version'

Gem::Specification.new do |gem|
  gem.name          = "cartman"
  gem.version       = Cartman::VERSION
  gem.authors       = ["Will Cosgrove"]
  gem.email         = ["will@willcosgrove.com"]
  gem.description   = %q{Cartman is a framework agnostic, redis-backed, shopping cart system}
  gem.summary       = %q{Doing shopping carts like a boss since 2012}
  gem.homepage      = "https://github.com/willcosgrove/cartman"

  gem.required_ruby_version = ">= 2.7"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency("redis", "~> 5.0")

  gem.add_development_dependency("rspec", "~> 3.0")
end
