# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_file/version'

Gem::Specification.new do |gem|
gem.name        = "active_file"
gem.version     = ActiveFile::VERSION
gem.description = "Just a file system database"
gem.summary     = "Just a file system database"
gem.author      = "Lucas Souza"
gem.files       = Dir["{lib/**/*.rb,README.md,Rakefile,active_file.gemspec}"]

# dependência do código com a gem brnumeros
gem.add_dependency "brnumeros","~> 3.3.0"
end
