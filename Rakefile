begin
  require 'bundler/setup'
  require 'bundler/gem_tasks'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks properly.'
end

require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/packagetask'
require 'rubygems/package_task'



Rake::TestTask.new('test') do |t|
  t.libs << 'lib'
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
  t.ruby_opts = ['-r openurl', '-r test/unit']
end
