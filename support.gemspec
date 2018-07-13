$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "support/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "support"
  s.version     = Support::VERSION
  s.authors     = ["Elton Silva"]
  s.email       = ["elton.chrls@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Support."
  s.description = "TODO: Description of Support."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
