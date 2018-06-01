require "pry"

class Song 
  attr_accessor :name, :artist
  
 @@songs = []
 
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @songs = []
  end 
  
  def name 
    @name
  end 
  
  def self.artist
    @artist
  end
  
  def save
    @@songs << self
    @songs << @name
  end
  
  def self.new_by_filename(file_name)
   song_info = file_name.chomp(".mp3").split(" - ")
   
   song = Song.new(song_info[1])
   artist = Artist.find_or_create_by_name(song_info[0])
   song.artist = artist
   artist.add_song(self)
   artist.save
   song
    
  end
  
 
end 