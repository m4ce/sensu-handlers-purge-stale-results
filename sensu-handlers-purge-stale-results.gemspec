lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'

if RUBY_VERSION < '2.0.0'
  require 'sensu-handlers-purge-stale-results'
else
  require_relative 'lib/sensu-handlers-purge-stale-results'
end

Gem::Specification.new do |s|
  s.authors                = ['Matteo Cerutti']
  s.date                   = Date.today.to_s
  s.description            = 'This handler provides facilities for purging stale check events'
  s.email                  = '<matteo.cerutti@hotmail.co.uk>'
  s.executables            = Dir.glob('bin/**/*').map { |file| File.basename(file) }
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  s.homepage               = 'https://github.com/m4ce/sensu-handlers-purge-stale-results'
  s.license                = 'MIT'
  s.metadata               = { 'maintainer'         => '@m4ce',
                               'development_status' => 'active',
                               'production_status'  => 'stable',
                               'release_draft'      => 'false',
                               'release_prerelease' => 'false'
                              }
  s.name                   = 'sensu-handlers-purge-stale-results'
  s.platform               = Gem::Platform::RUBY
  s.post_install_message   = 'You can use the embedded Ruby by setting EMBEDDED_RUBY=true in /etc/default/sensu'
  s.require_paths          = ['lib']
  s.required_ruby_version  = '>= 1.9.3'
  s.summary                = 'Sensu handler for purging stale check results'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuHandlersPurgeStaleResults::Version::VER_STRING

  s.add_runtime_dependency 'sensu-plugin',   '1.2.0'
  s.add_runtime_dependency 'chronic_duration',   '0.10.6'
end
