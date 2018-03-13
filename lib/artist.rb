class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    existing_artist = @@all.detect { |artist| artist.name == name }
    return existing_artist if !existing_artist.nil?

    Artist.new(name).save
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
