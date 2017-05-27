class Artist
attr_accessor :name, :songs
@@all = []
#self.save

def initialize(name)
  @name = name
  @songs = []
  #self.save
end

def save
 @@all << self  #adds the artist instance to the @@all class variable
end

def self.all
  @@all
end

def self.create(name)
     artist = Artist.new(name)
     artist.save
     artist
end

def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

def add_song(song)
  @songs << song
end

def songs
    @songs
end

def self.find_or_create_by_name(name)
   self.all.each do |artist|
    if (artist.name == name)
       return artist
    end
    # Artist.new(name)
   end
       self.create(name)
 end


 def print_songs
   @songs.each {|song| puts song.name}
 end


end
