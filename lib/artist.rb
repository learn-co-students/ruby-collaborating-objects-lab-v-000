class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def name=(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    found = @@all.find do |artist|
      artist.name == name
    end
    if found == nil
      new_song = Artist.new(name)
    else 
      found
    end
  end
  
  def add_song(song)
    @songs << song
  end
  
  def print_songs
    @songs.each do |song| 
      puts song.name
    end
  end
end