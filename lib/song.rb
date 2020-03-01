class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_array = filename.split(" - ")
    artist = song_array[0]
    song = song_array[1]
    new_song = self.new(song)
    new_song.artist_name = artist
    return new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
