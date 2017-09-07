class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.find { |song| song.name === name }
      @@all.find { |song| song.name === name }
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name}
  end


end
