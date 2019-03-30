$:.push File.expand_path("../lib", __FILE__)
require "avatars_for_rails/version" 

Gem::Specification.new do |s|
  s.name = "avatars_for_rails"
  s.version = AvatarsForRails::VERSION
  s.authors = ["Jaime Castro Montero", "GING"]
  s.summary = "Avatar manager for rails apps"
  s.description = "A Rails engine that allows any model to act as avatarable, permitting it to have a complete avatar manager"
  s.email = "social-stream@dit.upm.es"
  s.homepage = "http://github.com/ging/avatars_for_rails"

  s.files = `git ls-files`.split("\n")

  # Gem dependencies
  #
  s.add_runtime_dependency('jquery-rails')
  s.add_runtime_dependency('jquery-ui-rails')
  s.add_runtime_dependency('flashy')
  s.add_runtime_dependency('paperclip', '>= 2.3.4')

  if defined?(PLATFORM) && PLATFORM == 'java'
    s.add_runtime_dependency('rmagick4j','>= 0.3.0')
  else
    s.add_runtime_dependency('rmagick',' 2.16.0')
  end

  # Development Gem dependencies

  s.add_development_dependency('rails', '~>4.0.0')
  # Testing database
  s.add_development_dependency('sqlite3')
    
  s.add_development_dependency('test-unit')

  # Debugging
  s.add_development_dependency('byebug')
  # Specs
  s.add_development_dependency('rspec-rails')
  # Fixtures
  s.add_development_dependency('factory_girl')
  # Population
  s.add_development_dependency('forgery')
  # Integration testing
  s.add_development_dependency('capybara')
end

