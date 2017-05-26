class Artist 
attr_accessor :name, :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end 

def save
 @@all << self  #adds the artist instance to the @@all class variable
end 

def self.all
  @@all
end


def add_song(song)
  @songs << song
end

def songs
    @songs
end

def self.find_or_create_by_name(name)
   self.all.each do |artist|
     return if artist.name == name
   end
   Artist.new(name)
 end

 def print_songs
   @songs.each {|song| puts song.name}
   
 end


end 