dir = File.dirname(__FILE__)
$LOAD_PATH.unshift dir unless $LOAD_PATH.include?(dir)


# Replace module functions and libraries
module Replace
  VERSION = '0.0.1'.freeze
  FULL_VERSION = "Replace - #{VERSION}, " \
    "Ruby - #{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}-#{RUBY_PLATFORM}".freeze
  class << self
    attr_accessor :debug
  end
end
