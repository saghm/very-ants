# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'very_ants/version'

Gem::Specification.new do |spec|
  spec.name          = "very_ants"
  spec.version       = VeryAnts::VERSION
  spec.authors       = ["Saghm Rossi"]
  spec.email         = ["saghmrossi@gmail.com"]

  spec.summary       = %q{Probabilistic arithmetic library}
  spec.description   = %q{Redefines standard arithmetic operators to be probabilistic (but still return the correct result on average). Not meant to be used seriously.}
  spec.homepage      = "https://github.com/saghm/very-ants"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
