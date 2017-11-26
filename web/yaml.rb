require 'movie'
require 'yaml'

movie = Movie.new
movie.title = "Fight Club"
movie.director = "David Fincher"
movie.year = 1999

puts movie_yaml = YAML.dump(movie)

copy = YAML.load(movie_yaml)
puts copy.title, copy.director, copy.year
