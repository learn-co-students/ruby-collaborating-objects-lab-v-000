class Artist

  attr_accessor :name

  @@all =[]

  def initialize(name)
    self.name = name
    @songs = []
    @@all << self
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

  def self.find_or_create_by_name(name)
    @@all.each { |artist|
      if artist.name == name
        return artist
      end
    }
    self.new(name)
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end

end
