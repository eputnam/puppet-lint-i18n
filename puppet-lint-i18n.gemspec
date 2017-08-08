# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppet-lint/plugins/version'

Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-i18n'
  spec.version     = CHECK_I18N::VERSION
  spec.homepage    = 'https://github.com/puppetlabs/puppet-lint-i18n'
  spec.license     = 'Apache 2.0'
  spec.authors     = ['Puppet, Inc.']
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'Will check the decoration of your puppet code'
  spec.description = <<-EOF
    Will check the decoration of your puppet code
  EOF

  spec.add_dependency             'puppet-lint', '> 2.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake'
end
