require 'pry'
class Song
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    newitems = filename.split(/ \- |\./)
    songname = newitems[1]
    artistname = newitems[0]
    song = self.new(songname)
    song.artist_name = artistname
    song
    
    #parse a filename
    #create a new song 
    #associate new song to artist_name
    #return new song instance
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
      self.artist.add_song(self) 
    else
      self.artist.name = name
      self.artist.add_song(self) 
    end
  end
end