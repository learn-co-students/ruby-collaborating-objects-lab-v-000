class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name

  end

  def self.new_by_filename (filename)
    song_array = filename.split(" - ")
    song = self.new(song_array[1])
    song.artist_name = (song_array[0])
    song
  end

  def artist_name= (name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

end
