class Clip
  # attr_reader :comments
  #
  # def initialize
  #   @comments = []
  # end

  # def add_comment(comment)
  #   comments << comment
  # end

  def play
    puts "Playing #{object_id}..."
  end
end

module AcceptesComments
  def comments
    # if @comments
    #   @comments
    # else
    #   @comments = []
    # end

    # @comments = @comments || []

    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end
end

class Video < Clip
  include AcceptesComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptesComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptesComments
  def show
    puts "Displaying #{object_id}..."
  end
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")

song = Song.new
song.add_comment("Awesome beat.")

photo = Photo.new
photo.add_comment("Beautiful colors.")

video.play
photo.show

p video.comments, song.comments
