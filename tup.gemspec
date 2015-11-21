# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tup/version'

Gem::Specification.new do |spec|
  spec.name          = "tup"
  spec.version       = Tup::VERSION
  spec.authors       = ["James Ottaway"]
  spec.email         = ["git@james.ottaway.io"]

  spec.summary       = %q{like tap, but better…}
  spec.homepage      = "https://github.com/jamesottaway/tup"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
