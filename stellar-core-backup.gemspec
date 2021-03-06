# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stellar-core-backup/version'

Gem::Specification.new do |spec|
  spec.name          = "stellar-core-backup"
  spec.version       = StellarCoreBackup::VERSION
  spec.authors       = ["Tom Llewellyn-Smith"]
  spec.email         = ["tom@stellar.org"]
  spec.summary       = %q{A helper script to backup a stellar-core node}
  spec.homepage      = ""
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "contracts", "~> 0.9"
  spec.add_dependency "pg", "~> 0.18.1"
  spec.add_dependency "minitar", "~> 0.6.1"
  spec.add_dependency "aws-sdk-s3", "~> 1"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
