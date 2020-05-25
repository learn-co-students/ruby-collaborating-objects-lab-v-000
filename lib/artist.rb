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

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|artist| artist.name == name}
      #find artist
      @@all.detect {|artist| artist.name == name}
    else
      #create artist
      artist = self.new(name)
      @@all << artist
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
















