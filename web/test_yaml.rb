require 'movie'
require 'yaml/store'

store = YAML::Store.new('test.yml')

first_movie = Movie.new(title: 'Sprited Away', director: "Hayao Miyazaki", year: 2010)
sencond_movie = Movie.new(title: 'Inception', director: 'Christopher Nolan', year: 2010)

store.transaction do
  store[first_movie.title] = first_movie
  store[sencond_movie.title] = sencond_movie

  p store["Inception"]
end
