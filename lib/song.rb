require 'pry'
class Song
  def initialize(name)
    @name = name
  end

  attr_accessor :name
  attr_reader :artist

  # def new_song(name)
  #   song = Song.new(name)
  # end

  def artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
    #self.artist.add_song(self)
  end

  def artist=(artist_name)
    self.artist = artist_name
  end

  def new_by_filename(file_name)
    #artist - song - genre.mp3
    file_arr = file_name.split(" - ")
    song = Song.new(file_arr[1])
    artist_name=file_arr[0]
    #binding.pry
    song
  end
end
