# Song
#   #initialize with #name
#     accepts a name for the song (FAILED - 12)
#   #name=
#     sets the song name (FAILED - 13)
#   #artist=
#     sets the artist object to belong to the song (FAILED - 14)
#   .new_by_filename
#     creates a new instance of a song from the file that's passed in (FAILED - 15)

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1]
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
 end
end
