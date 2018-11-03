class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
    @songs
  end

  def self.save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if (artist.nil?)
      artist = Artist.new(name)
    else
      artist.name = name
    end
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end