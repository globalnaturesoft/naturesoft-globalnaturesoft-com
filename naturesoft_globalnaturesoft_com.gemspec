$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "naturesoft/globalnaturesoft_com/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "naturesoft_globalnaturesoft_com"
  s.version     = Naturesoft::GlobalnaturesoftCom::VERSION
  s.authors     = ["Global Naturesoft"]
  s.email       = ["globalnaturesoft@gmail.com"]
  s.homepage    = "http://globalnaturesoft.com"
  s.summary     = "GlobalnaturesoftCom features of Global Naturesoft."
  s.description = "GlobalnaturesoftCom features of Global Naturesoft."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency "naturesoft_core"
  s.add_dependency "deface"
end
