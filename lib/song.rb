require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name = nil, artist = nil)
    @name = name
  end# of initialize

  def self.new_by_filename(file_name)
    data = file_name.split("-")
    artist_name = data[0].strip
    song_name = data[1].strip
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song 
  end# of self.new_by_filename

end# of class 
