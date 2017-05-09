class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    x = file_name.split(' - ')
    song_name = x[1]
    artist_name = x[0]
    new_song = Song.new(song_name)
    artist = new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song
  end

end
