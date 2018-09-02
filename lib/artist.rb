class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) != nil
      return self.find_by_name(name)
    else
      artist = Artist.new(name)
      self.all << artist
      return artist
    end
  end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
