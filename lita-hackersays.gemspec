Gem::Specification.new do |spec|
  spec.name          = "lita-hackersays"
  spec.version       = "1.0.1"
  spec.authors       = ["Jarmo Pertman"]
  spec.email         = ["jarmo.p@gmail.com"]
  spec.description   = %q{Handler for Lita Chat bot that provides quotes from hackers backed by hackersays.com.}
  spec.summary       = %q{Handler for Lita Chat bot that provides quotes from hackers backed by hackersays.com.}
  spec.homepage      = "https://github.com/jarmo/lita-hackersays"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
