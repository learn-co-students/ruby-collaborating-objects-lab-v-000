class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    arr = file_name.split(" - ")
    artist = arr[0]
    song = arr[1]
    new_song = Song.new(song)
    new_song.artist_name = artist
    new_song
  end

end
