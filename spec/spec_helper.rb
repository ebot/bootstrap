require File.join(File.dirname(__FILE__), '..', 'lib', %w[replace])
require 'logger'
require 'pry-byebug'
require 'minitest/reporters'
require 'minitest/autorun'

begin
  reporter = Minitest::Reporters::SpecReporter.new
  Minitest::Reporters.use! reporter
rescue StandardError => e
  puts 'Color Disabled - minitest-reporters not working:'
  puts "  #{e.message}"
end
