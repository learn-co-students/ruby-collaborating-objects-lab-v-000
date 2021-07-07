class Artist
  attr_accessor :artist, :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
  @@all
  end

  def self.find_or_create_by_name(name)
    find_art = self.all.detect do |art|
      art.name == name
  end
    if find_art == nil
      new_artist = self.new(name)
      new_artist.save
      new_artist
    else
      find_art
    end
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    songs.each {|s| puts s.name}
  end
  end
