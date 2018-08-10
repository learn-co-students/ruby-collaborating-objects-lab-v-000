class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name} != nil
      return @@all.detect {|artist| artist.name == name}
    else
      return self.new(name)
    end
  end

  def add_song(song)
    @songs << song
  end
end
