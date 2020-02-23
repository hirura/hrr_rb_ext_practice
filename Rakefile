require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rake/extensiontask"

task :build => :compile

Rake::ExtensionTask.new("hrr_rb_ext_practice") do |ext|
  ext.lib_dir = "lib/hrr_rb_ext_practice"
end

task :default => [:clobber, :compile, :spec]
