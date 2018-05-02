class Artist 
  
attr_accessor :name 
   @@all = []
   
   def initialize(name)
    @name = name 
    @songs = []
   end
  
   def add_song(song)
    @songs << song
    song.artist = self
   
   end
   
   def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
   end
  
   def songs
    @songs
   end
   
   def self.all
    @@all
   end

   def save
    self.class.all << self
   end
  
   def self.find_or_create_by_name(name)
    artist_exist = self.all.detect{|a| a.name == name} 
    if artist_exist == nil
    a = self.new(name)
    a.name = name
    a.save
    a
   else
    artist_exist
   end
  end
  
  def print_songs
    self.songs.each do |song|
     puts song.name
    end
  end
    
end