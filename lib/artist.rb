class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def songs
    @songs 
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self

  end

  def self.find_or_create_by_name(name)
    self.all.detect do |artist_name|
      if artist_name.name == name
      else
        self.new(name)
      end
    end

  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end