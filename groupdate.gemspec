# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'groupdate/version'

Gem::Specification.new do |spec|
  spec.name          = "groupdate"
  spec.version       = Groupdate::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["acekane1@gmail.com"]
  spec.description   = %q{The simplest way to group temporal data}
  spec.summary       = %q{The simplest way to group temporal data}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 3.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"

  if RUBY_PLATFORM == "java"
    spec.add_development_dependency "activerecord-jdbcpostgresql-adapter"
    spec.add_development_dependency "activerecord-jdbcmysql-adapter"
  else
    spec.add_development_dependency "pg"
    spec.add_development_dependency "mysql2"
  end
end
