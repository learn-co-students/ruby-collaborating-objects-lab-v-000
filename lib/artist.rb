class Artist
  attr_accessor :name, :songs
  @@all = []
  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.create_by_name(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def self.find_by_name(name)
    artist = self.all.detect{|artist| artist.name == name}
end

  def self.find_or_create_by_name(name, song=nil)
    artist = self.find_by_name(name)
    if artist == nil
      artist = self.create_by_name(name)
    end
    if song != nil
      artist.add_song(song)
    end
    artist
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
