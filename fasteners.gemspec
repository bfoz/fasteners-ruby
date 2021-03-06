# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
    spec.name          = "fasteners"
    spec.version       = '0.1.1'
    spec.authors       = ["Brandon Fosdick"]
    spec.email         = ["bfoz@bfoz.net"]
    spec.summary       = %q{Nuts and bolts}
    spec.description   = %q{Models for Nuts, Bolts, and Screws}
    spec.homepage      = "http://github.com/bfoz/fasteners-ruby"
    spec.license       = "BSD"

    spec.files         = `git ls-files -z`.split("\x0")
    spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
    spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
    spec.require_paths = ["lib"]

    spec.add_dependency	'units', '~> 3.0'

    spec.add_development_dependency "bundler", "~> 1.6"
    spec.add_development_dependency "rake"
end
