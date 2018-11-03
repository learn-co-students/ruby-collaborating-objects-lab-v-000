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
  
  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find do |n| 
      if n.name == name
        n
      else
        new_name = Artist.new(name)
      end
    end
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end