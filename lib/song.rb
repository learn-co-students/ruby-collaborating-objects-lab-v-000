class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    artist, song, genre = file.split(" - ")
    new_song = Song.new(song.tr(".mp3", ""))
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.genre = genre.tr(".mp3", "")
    new_song.artist.add_song(new_song)
    new_song
  end

end
