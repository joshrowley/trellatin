# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trellatin/version'

Gem::Specification.new do |spec|
  spec.name          = "trellatin"
  spec.version       = Trellatin::VERSION
  spec.authors       = ["Josh Rowley"]
  spec.email         = ["josh.rowley@carrotcreative.com"]
  spec.description   = %q{Inherit from Trellatin to easily use Trello as a persistence layer for your classes.}
  spec.summary       = %q{Use Trello as a persistence layer.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "ruby-trello"
end
