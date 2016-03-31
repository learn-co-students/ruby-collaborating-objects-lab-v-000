class Artist
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
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

  def self.find_or_create_by_name(name)
    @@all.detect do |artist|
      if artist.name == name
        artist
      else
        new_artist = Artist.new(name)
        new_artist.save
      end
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.title
    end
  end

end
