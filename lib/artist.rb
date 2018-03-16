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
    # if @@all.include?(self) == false
    @@all << self
    # end
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
  if self.find(name)
    self.find(name)
  else
  new_artist = self.new(name)
    end
  end

  def self.find(name)
   self.all.detect do |artist|
    artist.name == name
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
