class Artist 
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
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
  
  def self.find_or_create_by_name(name)
    find_artist = self.all.detect {|artist| artist.name == name}
    if find_artist
      find_artist
    else 
      create_artist = self.new(name)
      create_artist.save
      create_artist 
    end
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
  
end