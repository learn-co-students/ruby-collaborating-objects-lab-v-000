class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name= (name)
    @name = name
  end

  def artist= (artist)
    @artist = artist
  end

  def self.new_by_filename(filename)
    song_arr = filename.split(" - ")
    song = Song.new(song_arr[1])
    song.artist_name = song_arr[0]
    song
  end

  def artist_name= (name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
