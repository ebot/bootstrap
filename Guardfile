group :red_green_refactor, halt_on_fail: true do
  guard :minitest do
    watch(%r{^spec/(.*)_spec\.rb$})
    watch(%r{^spec/test_files/(.*)\.yml$}) { 'spec' }
    watch(%r{^lib/(.+)\.rb$})         { |m| "spec/#{m[1]}_spec.rb" }
    watch(%r{^spec/spec_helper\.rb$}) { 'spec' }
    watch(%r{^lib/replace/(.+)\.rb$}) { |m| "spec/index_#{m[1]}_spec.rb" }
  end

  guard :rdoc, format: :sdoc, op: 'docs/rdoc', all_on_start: false do
    watch(%r{^lib/(.+)\.rb$})
    watch(%r{^lib/dm_core/(.+)\.rb$})
  end

  guard :rubocop, all_on_start: false do
    watch(%r{.+\.rb$})
    watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  end
end
