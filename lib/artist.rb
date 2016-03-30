class Artist

  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(possible_name)
    @@all.select {|artist| return artist.name if artist.name == possible_name}
    artist = Artist.new(possible_name)
    return artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
