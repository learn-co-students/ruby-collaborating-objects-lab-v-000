class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_parts = file_name.split(" - ")
    song = self.new(file_parts[1])
    song.artist_name = file_parts[0]
    song
  end

  def artist_name=(name)
    song_artist = Artist.find_or_create_by_name(name)
    self.artist = song_artist
    self.artist.add_song(self)
  end
end