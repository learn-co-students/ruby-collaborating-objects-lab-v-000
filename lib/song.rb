require 'pry'
class Song 

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    f = filename.split("-")
    song_name = f[1].strip
    artist_name = f[0].strip
    s = Song.new(song_name)
    s.artist = Song.artist_name(artist_name)
    s

  end  



  def self.artist_name(name)
    Artist.find_or_create_by_name(name)
  end

end