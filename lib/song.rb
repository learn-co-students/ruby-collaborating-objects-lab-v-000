class Song
  attr_accessor :name, :artist, :title

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
  end
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1]) # without the.mp3 extension
    artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist = artist
    artist.add_song(song)
    song
  end
end