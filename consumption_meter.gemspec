$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'consumption_meter/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'consumption-meter'
  spec.version     = ConsumptionMeter::VERSION
  spec.authors     = ['Bruno Porto']
  spec.email       = ['brunotporto@gmail.com']
  spec.homepage    = 'https://github.com/taxweb/consumption-meter'
  spec.summary     = 'Consumption Meter'
  spec.description = 'Consumption Meter'
  spec.license     = 'MIT'

  spec.files = Dir['{lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  spec.test_files = Dir['spec/**/*']

  # spec.add_dependency 'rails', ['>= 3', '< 6']
  # spec.add_dependency 'rubyXL', '~> 3.3'
  # spec.add_dependency 'spreadsheet', '~> 1.1'
  # spec.add_dependency 'builder', '~> 3.0'
  #
  # spec.add_development_dependency 'sqlite3', '~> 1.3'
  # spec.add_development_dependency 'rspec-rails', '~> 3.7'
  # spec.add_development_dependency 'simplecov', '~> 0.15'

end
