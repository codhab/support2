$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "support/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "support"
  s.version     = Support::VERSION
  s.authors     = ["Elton Silva"]
  s.email       = ["elton.chrls@gmail.com"]
  s.homepage    = "https://github.com/codhab/support.git"
  s.summary     = "Migrations, Domains e Services"
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.test_files = Dir['spec/**/*']

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "rake"
  s.add_dependency "pg"
  s.add_dependency "bcrypt"
  s.add_dependency "audited", "~> 4.7"
end
