class Artist 
 attr_accessor :name , :songs
 
 @@song_count = 0
 @@all = []

 
 def initialize(name)
      @name = name
      @songs = []
 end
 
 def add_song(song)
     @songs<< song
 end
 
 def self.all
    @@all 
 end
 
 def save
      @@all << self
 end
 
 
end