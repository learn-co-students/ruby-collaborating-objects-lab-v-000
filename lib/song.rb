class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    artist_name = data[0]
    song_name = data[1].chomp("mp3")
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
    song.artist = artist
    song
  end

end
