require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    #binding.pry
    song = Song.new(name)
    song.name = (data[1])
    song.artist = data[0]
   # artist = song.artist(data[0])
    song

    binding.pry

  end

  def artist(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

end
