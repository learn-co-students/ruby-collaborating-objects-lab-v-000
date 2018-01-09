class Artist 
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
    @songs = []
  end
  
  def add_song(song_name)
    @songs << song_name
  end
  
  def songs
    @songs
  end
  def self.all 
    @@all
  end
  
  def save
    @@all << self
  end
  def self.find_or_create_by_name(artist_name)
    if @@all.none? {|artist| artist.name == artist_name}
      artist = self.new(artist_name)
      artist
    else 
      @@all.detect {|artist| artist.name == artist_name}
    end
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name 
    end
  end
      
end
