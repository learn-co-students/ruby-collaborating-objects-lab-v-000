class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    artist = file_array[0]
    song_name = file_array[1]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end
end
