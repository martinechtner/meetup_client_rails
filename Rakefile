require 'bundler/gem_tasks'

desc 'run specs'
task(:spec) { ruby "-S rspec spec#{" -c" unless windows}" }

task default: :spec
