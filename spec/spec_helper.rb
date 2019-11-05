ENV['ENVIRONMENT'] = 'test'

require(File.join(File.dirname(__FILE__), '..', 'app.rb'))

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BookmarkManager

=begin
  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = "spec/examples.txt"
  config.disable_monkey_patching!
  config.warnings = true
  if config.files_to_run.one?
    config.default_formatter = "doc"
  end
  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed
=end
