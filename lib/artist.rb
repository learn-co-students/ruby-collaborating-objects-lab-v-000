class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    all.detect { |artist| artist.name == name } || self.new(name)
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
