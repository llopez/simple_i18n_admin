begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.version = "0.1.0"
    gem.author = "luigibyte"
    gem.email = "luigibyte@gmail.com"
    gem.homepage = "http://github.com/llopez/simple-i18n-admin"
    gem.name = "simple-i18n-admin"
    gem.summary = "Admin tool for i18n translations"
    gem.files = Dir["{lib}/**/*", "{app}/**/*", "{config}/**/*"]
  end
rescue
  puts "Jeweler or one of its dependencies is not installed."
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end
