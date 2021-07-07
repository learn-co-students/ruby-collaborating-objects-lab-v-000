#MP3 importter parses through all filenames in db/mp3 folder to send filenames to the song class. 
#Song class is responsible for creating songs given each filename and sending the artists name (string) to the artists class. 
#Artist class will be responsible for either creating a new artist or finding the instance of an existing artist if it doesn't exist yet.

class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  def print_songs 
		@songs.each do |song|
			puts song.name
		end 
	end
  
end






