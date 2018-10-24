class Song
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
    artist = Artist.find_or_create_by_name(artist_name)
    song = Song.new(name, artist)
    artist.add_song(song)
    song
  end
end
