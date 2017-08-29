

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def save
    @@all << self
  end

  def self.new_by_filename(filename)
    song_artist = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    song_genre = filename.split(" - ")[2]
    new_song = self.new(song_name)
    new_song.artist_name = song_artist
    new_song.save
    new_song
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end
