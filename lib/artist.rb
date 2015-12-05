class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    self.save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each do |song|
      puts song
    end
  end

  def self.find_or_create_by_name(name)
    @@all.detect { |artist| artist.name == name } || Artist.new(name)
  end
end