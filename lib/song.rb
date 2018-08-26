require "pry"
class Song
  
  @@all = []
  
  attr_accessor :name, :artist, :songs
  
  
  def initialize(song_name)
    @name = song_name
  end 
  
  def save
    @@all << self
  end 
    
  
  
  def self.new_by_filename(file_name)
  
    array = file_name.gsub(".mp3","").split(" - ")
    
    new_artist = Artist.find_or_create_by_name(array[0])
    new_song = self.new(array[1])
    new_song.artist = new_artist
    new_song.save
    new_artist.add_song(new_song)
    new_song
  
  end
    

  
  

end 