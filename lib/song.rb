class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
    new_song = self.new(song_name) #=> returns Song class object
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    #new_song.artist.songs << new_song
    new_song
  end

  def artist=(artist_name)
    @artist = artist_name
  end

end
