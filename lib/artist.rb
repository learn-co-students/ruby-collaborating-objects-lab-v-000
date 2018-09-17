
class Artist 
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @songs = []
    @name = name
  end 
  
 def self.find_or_create_by_name(name)
		@@all.each do |artist|
			if artist.name == name 
				artist
			else
				 new_artist = self.new(name)
				 return new_artist
			end
		end 
	end
 
 def add_song(song)
   @songs << song
 end
 
 def save
   @@all << self
 end
 
 def self.all
   @@all
 end 
 
 def print_songs
   @songs.each do |song|
     puts song.name
   end
 end 
 
end 