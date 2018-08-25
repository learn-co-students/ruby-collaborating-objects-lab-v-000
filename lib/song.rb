class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist = Artist.new(artist_name)
    song.artist.add_song(song)
    song
#    binding.pry
  end

end
