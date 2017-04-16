class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|artist_intance| artist_intance.name == name}
      self.all.detect {|artist_intance| artist_intance.name == name}
    else
      artist = self.new(name)
      artist.save
      artist 
    end
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each {|song| puts song.name }
  end


end
