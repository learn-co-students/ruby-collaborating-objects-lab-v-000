class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end

  def self.new_by_filename(filename)
    filename_array = filename.chomp('.mp3').split(' - ')
    song_name = filename_array[1]
    song = self.new(song_name)
    artist_name = filename_array[0]
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end

end
