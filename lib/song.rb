class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_and_song = filename.split(" - ")
    song = self.new(artist_and_song[1])
    artist = Artist.new(artist_and_song[0])
    artist.add_song(song)
    artist.save
    song.artist = artist
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    artist
  end

end
