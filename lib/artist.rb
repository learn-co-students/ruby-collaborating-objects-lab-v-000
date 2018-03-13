class Artist
 
   attr_accessor :name
 
   @@all = [] 
 
   def initialize(name)
     @name = name
     @songs = []
   end 
 
   def add_song(song)
     self.songs << song
     song.artist = self
   end
 
   def songs
     @songs 
   end 
 
   def self.all 
     @@all 
   end 
 
   def save
     self.class.all<<self 
   end 
 
   def self.find_or_create_by_name(name)
     if self.all.detect {|s| s.name == name}
       self.all.detect {|s| s.name == name}
     else 
       arti = Artist.new(name)
       arti.save 
       arti 
     end 
       
   end 
 
   def print_songs
     @songs.each {|s| puts s.name} 
   end 
 
 end