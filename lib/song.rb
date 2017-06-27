require 'pry'
class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name =  name
  end
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = self.new(array[1])
    artists = Artist.new(array[0])
    song.artist = artists

    @@all << song
    song
    #binding.pry
  end
  def self.all
    @@all
  end
end
