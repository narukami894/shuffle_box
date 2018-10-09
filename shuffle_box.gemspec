
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shuffle_box/version"

Gem::Specification.new do |spec|
  spec.name          = "shuffle_box"
  spec.version       = ShuffleBox::VERSION
  spec.authors       = ["narukami894"]
  spec.email         = ["narukami894@gmail.com"]
  spec.summary       = "ShuffleBox is my toy, training gem"
  spec.description   = "ShuffleBox is my toy, training gem"
  spec.homepage      = "https://github.com/narukami894/shuffle_box"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "thor"
end
