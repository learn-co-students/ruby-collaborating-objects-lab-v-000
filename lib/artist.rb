class Artist
  attr_accessor :name, :songs
   @@all = []
   def initialize(name)
    @name = name
    @songs = []
   end

   def add_song(song)
    @songs << song
    song.artist = self
  end
    
    def save
    @@all << self
  end
   
   def self.all
    @@all
  end
  
  def self.create_by_name(name)
      artist = Artist.new(name)
      
      artist.save
      artist
  end

  def self.find_by_name(name)
    #detect method iterates over the class variable @@all and returns the first song that matches song name passed in as an argument.
    self.all.detect{|artist| artist.name == name}
  end


  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
   
  
  def print_songs
    @songs.each{|song| puts song.name}
  end
end