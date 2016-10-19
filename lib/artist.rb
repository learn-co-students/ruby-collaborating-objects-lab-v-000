class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.detect { |artist| artist.name == name} == nil
      new_artist = self.new(name)
      self.all << new_artist
      new_artist
    else
      self.all.detect {|artist| artist.name == name}
    end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
