class Song
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, name, genre = filename.chomp(".mp3").split(" - ")
    song = self.new(name)
    song.genre = genre
    song.artist_name = artist
    song
  end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    self.artist.add_song(self.name)
  end
end
