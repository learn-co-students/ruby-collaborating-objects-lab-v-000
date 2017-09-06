class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    singer, title = song_info[0], song_info[1]
    song = self.new(title)
    song.artist_name = singer
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
