class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = file.split(" - ")[1]
    new_song = self.new(song)
    artist = file.split(" - ")[0]
    new_song.artist_name = artist
    new_song.save
  end

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def save
    @@all << self
    self
  end
end
