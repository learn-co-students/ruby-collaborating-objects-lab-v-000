class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

  def self.find_or_create_by_name(artist_name)
    if self.all.any? { |artist| artist.name == artist_name }
      self.all.select { |artist| artist.name == artist_name }.first
    else
      Artist.new(artist_name)
    end
  end
end
