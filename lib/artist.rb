class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    existing_artist = @@all.detect {|artist| artist.name == name}
    if existing_artist.nil?
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    else
      existing_artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end
  
end
