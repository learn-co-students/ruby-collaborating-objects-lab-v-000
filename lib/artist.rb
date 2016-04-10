class Artist

   @@all = []

   attr_accessor :name, :songs
 
   def initialize(name)
     @name = name
     @songs = []
     @@all << self
   end
 
   def add_song(song)
     @songs << song
   end
 
   def songs
     @songs
   end
 
   def save
     @@all << self
   end
 
   def self.all
     @@all
   end
 
   def self.find_or_create_by_name(name)
     self.all.each do |artist|
        return artist if artist.name == name
     end
       artist = Artist.new(name)
   end
 
   def print_songs
     @songs.each {|song| puts song.name}
   end
 
 
 end