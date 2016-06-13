class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_object = self.all.detect { |artist| artist.name == name }
    if artist_object.nil?
      artist_object = self.new(name)
      artist_object.save
    end
    artist_object
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
