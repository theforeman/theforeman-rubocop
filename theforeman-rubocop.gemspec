# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "theforeman/rubocop/version"

Gem::Specification.new do |spec|
  spec.name          = "theforeman-rubocop"
  spec.version       = Theforeman::Rubocop::VERSION
  spec.authors       = ["Ondrej Ezr"]
  spec.email         = ["team@theforeman.com"]

  spec.summary       = 'This gem guides and shares rubocop style configs.'
  spec.homepage      = 'https://github.com/theforeman/theforeman-rubocop'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.89.0"
  spec.add_dependency "rubocop-rspec", "~> 1.37.0"
  spec.add_dependency 'rubocop-minitest', '~> 0.9.0'
  spec.add_dependency 'rubocop-performance', '~> 1.5.2'
  spec.add_dependency 'rubocop-rails', '~> 2.5.2'
  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
end
