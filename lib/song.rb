require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #name.artist_name = artist
    
    artist.add_song(self)
  end
  
  def self.new_by_filename(file_name)
    #file_name.split("-").collect  |artist_name, song_name, file_type|
      artist, title = file_name.split(" - ")
      
      new_song = self.new(title)
      new_song.artist_name = artist
      new_song
      #artist_name=(artist_name)
    #end
    #binding.pry
      #name
  end

end