# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'lib', *%w[replace])

Gem::Specification.new do |s|
  s.name        = "replace"
  s.version     = Replace::VERSION

  s.author      = "Ed Botzum"
  s.email       = "contact@edbotz.us"

  s.summary     = "Replace - Add summary here"
  s.description = "Add your complete, long-winded description " <<
                  "here for users."
                  s.homepage    = "http://edbotz.us"

  s.files       = Dir.glob("{lib}/**/*") + %w(README.md)
  # s.executables = ['replace']

  # s.add_runtime_dependency('tiny_tds', '~> 0.6')

  s.extra_rdoc_files = ['README.md']
  s.rdoc_options << '--main' << 'README.md' << '--line-numbers' << '--inline-source'
end
