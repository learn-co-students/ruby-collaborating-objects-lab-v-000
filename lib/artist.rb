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

  def save
    self.class.all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_name = self.all.find { |artist| artist.name == name }
    if artist_name == nil
      Artist.new(name).save
    else
      artist_name
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
