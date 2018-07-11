class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  @@all = []

  def self.all
    @@all
  end

  def add_song(song)
    # song = Song.new(title)
    # song.artist = self
    @songs << song
  end

  # def songs
  #   @@all.find {|s| s.artist == artist}
  # end

  def save
    @@all << self
    self
  end

  def self.create_by_name(name)
    self.new(name).save
  end

  def self.find_by_name(artist_name)
    @@all.find do |a|
    a.name == artist_name
      end
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
