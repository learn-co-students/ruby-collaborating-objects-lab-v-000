class Artist

@@all = []
  attr_accessor :name, :songs

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

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def songs
    @songs
  end

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end


  def self.find_or_create_by_name(name)
    artist = @@all.find{|artist| artist.name == name}
    unless artist
      artist = self.new(name)
      @@all << artist
    end
    artist
  end

end
