class Song
  attr_accessor :name, :artist
  
 @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
 
  def self.new_by_filename(filename)
    song = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist 
    #new_song.artist = artist
    #artist.add_song(new_song)
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
   
    #if (self.artist.nil?)
     # self.artist = Artist.new(name)
    #else
     # self.artist.name = name
    #end
  #end
  
 # def artist(artist_name)
  
  #end
  
  #def self.new_by_filename(filename)
   # artist, song = filename.split(" - ")
   # new_song = self.new(song)
   # new_song
  #end

 
 
end