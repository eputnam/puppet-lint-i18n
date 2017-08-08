require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

begin
  require 'github_changelog_generator/task'
  GitHubChangelogGenerator::RakeTask.new :changelog do |config|
    require 'puppet-lint/plugins/version'
    config.future_release = "v#{CHECK_I18N::VERSION}"
    config.header = "# Changelog\n\nAll notable changes to this project will be documented in this file.\n"
    config.include_labels = %w[enhancement bug]
    config.user = 'puppetlabs'
  end
rescue LoadError
  desc 'Install github_changelog_generator to get access to automatic changelog generation'
  task :changelog do
    raise 'Install github_changelog_generator to get access to automatic changelog generation'
  end
end
