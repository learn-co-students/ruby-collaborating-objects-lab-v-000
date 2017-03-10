class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.create_by_name(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def self.find_or_create_by_name(name)
    if search = @@all.detect {|artist| artist.name == name }
        search
      else
        self.create_by_name(name)
      end
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

  def print_songs
    songs.each {|song| puts song.name}


  end

  def save
    @@all << self
  end

end
