class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(artist_name)
    @name = artist_name
    @songs = []
    @@all << self
  end

  def self.new_by_filename(file)
    name = file.split(" - ")[0]
    artist = self.new(name)
    song = Song.new(file.split(" - ")[1])
    artist.add_song(song)
    artist.save
  end

  def self.find_or_create_by_name(artist_name)
    @@all.each do | artist |
      return artist if artist.name == artist_name
    end
    Artist.new(artist_name)
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
