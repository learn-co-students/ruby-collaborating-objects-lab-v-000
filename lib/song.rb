
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #parse filename into title, artist, genre (strip out .mp3 ending)
    filename = filename.chomp(".mp3")
    parsed_filename = filename.split(" - ")
    artist_name = parsed_filename[0]
    artist = Artist.find_or_create_by_name(artist_name)
    song_name = parsed_filename[1]
    genre = parsed_filename[2]

    song = Song.new(song_name)
    song.artist = artist
    artist.add_song(song)
    song
  end

end
