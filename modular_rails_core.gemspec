# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'modular_rails_core/version'

Gem::Specification.new do |spec|
  spec.name          = "modular_rails_core"
  spec.version       = ModularRailsCore::VERSION
  spec.authors       = ["Kennedy Marcos Rodrigues"]
  spec.email         = ["kennedymrodrigues@gmail.com"]

  spec.summary       = %q{ Modular Rails Core application.}
  spec.description   = %q{ Modular Rails Core application is a generator of core files that creates this kind of applications.}
  spec.homepage      = "https://github.com/kennedymarcos/modular_rails_core"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  #spec.files         = `git ls-files -z`.split("\x0").reject do |f|
   # f.match(%r{^(test|spec|features)/})
  #end
  spec.files = Dir['**/*'].keep_if { |file| File.file?(file) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
