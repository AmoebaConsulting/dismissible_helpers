$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'dismissible_helpers/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'dismissible_helpers'
  s.version     = DismissibleHelpers::VERSION
  s.authors     = ['TODO: Your name']
  s.email       = ['TODO: Your email']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of DismissibleHelpers.'
  s.description = 'TODO: Description of DismissibleHelpers.'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile', 'README.rdoc']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 3.2.9'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'fakeweb'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails', '~> 1.7.0'
  s.add_development_dependency 'factory_girl', '~> 2.6.0'
  s.add_development_dependency 'mocha', '~> 0.10.5'
  s.add_development_dependency 'launchy'
end
