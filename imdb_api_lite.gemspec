
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require 'imdb_api_lite/version'

Gem::Specification.new do |s|
  s.name        = "imdb_api_lite"
  s.version     = Imdb::VERSION
  s.authors     = ["Nithin Bekal"]
  s.email       = ["nithinbekal@gmail.com"]

  s.summary     = "A wrapper for Dean Clatworthy's IMDB API"
  s.description = "A wrapper for Dean Clatworthy's IMDB API."
  s.homepage    = "http://github.com/nithinbekal/imdb_api_lite"

  s.files = Dir.glob("lib/**/*.rb")

  s.add_dependency('json', '>= 1.7.5')
end
