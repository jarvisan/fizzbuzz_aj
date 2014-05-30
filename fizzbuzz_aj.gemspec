# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fizzbuzz_aj/version'

Gem::Specification.new do |spec|
  spec.name          = "fizzbuzz_aj"
  spec.version       = FizzbuzzAj::VERSION
  spec.authors       = ["Andrew Jarvis"]
  spec.email         = ["jarvis1990@gmail.com"]
  spec.summary       = %q{FizzBuzz gem}
  spec.description   = %q{A gem that contains the logic for a FizzBuzz program along with formatting options}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "json"
end
