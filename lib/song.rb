require 'pry'

class Song 
  attr_accessor :name, :artist   
  
  def initialize(name)
    @name = name 
  end

  def self.new_by_filename(filename)
    split_file = filename.split(' - ')
    artist_name = split_file[0]
    song_name = split_file[1]
    song = self.new(song_name)
    song.artist_name = artist_name
    song  
  end
  
  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
    artist.add_song(self)
  end
  
end

Song.new_by_filename("Action Bronson - Larry Csonka - indie.mp3")