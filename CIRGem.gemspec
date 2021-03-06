# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'CIRGem/version'

Gem::Specification.new do |spec|
  spec.name          = "CIRGem"
  spec.version       = CIRGem::VERSION
  spec.authors       = ["Ben Miles"]
  spec.email         = ["ben.miles2@gmail.com"]
  spec.description   = %q{Adds Chemical class, when chemicals are initialized by name ID keys such as StdInChIKey and SMILES are auto-populated from CIR}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  sped.add_development_dependency "HTTParty"
end
