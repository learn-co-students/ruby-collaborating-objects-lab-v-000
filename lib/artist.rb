class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.find_or_create_by_name(name)
    if !(self.all.detect { |artist| artist.name == name })
      test = self.new(name)
      test.add_song(name)
      test.save
      test
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each { |song| puts "#{song.name}" }
  end

end
