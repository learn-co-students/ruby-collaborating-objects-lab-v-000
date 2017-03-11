class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if self.name
      @@all.find {|artist| artist.name == name}
    else
      Artist.new(name)
    end
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
