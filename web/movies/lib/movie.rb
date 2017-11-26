class Movie
  attr_accessor :title, :director, :year, :id

  def initialize(title: '?', director: '?', year: '?')
    self.title = title
    self.director = director
    self.year = year
  end
end
