$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecuta los tests con --format documentation"
task :tdoc do
    sh "rspec spec/ppt_spec.rb --format documentation"
end
