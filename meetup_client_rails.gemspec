# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meetup_client_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'meetup_client_rails'
  spec.version       = MeetupClientRails::VERSION
  spec.authors       = ['martinechtner']
  spec.email         = ['martin.echtner@gmail.com']

  spec.summary       = %q{Meetup.com API Client}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  # spec.files         = Dir['{bin/*,lib/**/*,spec/**/*}'] + %w(meetup_client_rails.gemspec Rakefile README.md)

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w(lib spec)

  spec.required_ruby_version = '>= 2.0'

  # spec.add_development_dependency 'bundler', '~> 1.13'
  # spec.add_development_dependency 'rake', '~> 10.0'
  # spec.add_development_dependency 'rspec'
  # spec.add_development_dependency 'webmock'
end
