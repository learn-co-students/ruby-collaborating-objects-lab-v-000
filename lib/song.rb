class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def Song.new_by_filename(file_name)
    song_file = file_name.split(" - ")
    song = self.new(song_file[1])
    song.artist = Artist.find_or_create_by_name(song_file[0])
    song
  end

  def Song.artist=(artist_name)
    @artist = artist_name
    artist_name.add_song(self) unless artist_name.songs.include?(self)
  end

  def Song.artist
    @artist
  end
end