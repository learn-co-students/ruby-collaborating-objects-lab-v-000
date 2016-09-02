class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    self.name = name
  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    self.artist = artist
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(" - ")
    newSong = Song.new(filename_array[1])
    newSong.artist_name = filename_array[0]
    newSong.genre = filename_array[2].chomp(".mp3")
    newSong
  end

end
