class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end



  ## Helper methods for the .find_or_create_by_name class method
  def self.create_by_name(name)
    new_artist_instance = self.new(name)
    self.all << new_artist_instance
    new_artist_instance
  end

  def self.find_by_name(name)
    self.all.detect { |s| s.name == name }
  end



  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end