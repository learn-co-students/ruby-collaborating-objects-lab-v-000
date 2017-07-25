class Artist 
 attr_accessor :name , :songs
 
 @@song_count = 0
 @@all = [] 

 
 def initialize(name)
      @name = name
      @songs = []
 end
 
 def add_song(song)
     @songs << song
 end
 
 def self.all
    @@all 
 end
 
 def save
      @@all << self
 end
 
 
 def self.find_or_create_by_name(name)
  found_artist = @@all.find { |artist|
    name == artist.name
   }
   
   if found_artist == nil 
      artist = Artist.new(name)
      artist 
   end 
  
 end
 
 def print_songs
 end
 
end