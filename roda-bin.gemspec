# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roda/bin/version'

Gem::Specification.new do |spec|
  spec.name          = "roda-bin"
  spec.version       = Roda::BIN::VERSION
  spec.authors       = ["cj"]
  spec.email         = ["cjlazell@gmail.com"]
  spec.summary       = %q{a bin for roda}
  spec.description   = %q{allows you to run roda server/console etc...}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "roda"
  spec.add_runtime_dependency "clap"
  spec.add_runtime_dependency "rerun", "~> 0.11"
  spec.add_runtime_dependency "thin"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
