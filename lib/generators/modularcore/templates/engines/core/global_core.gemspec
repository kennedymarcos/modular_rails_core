$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "global/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "global_core"
  s.version     = Global::Core::VERSION
  s.authors     = ["Kennedy Marcos"]
  s.email       = ["kennedymrodrigues@gmail.com"]
  s.homepage    = "https://github.com/kennedymarcos/global_core"
  s.summary     = "Global Core engine files"
  s.description = "Global Core engine files - This files is inside Engines Folder in a modular rails application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "sqlite3"
end
