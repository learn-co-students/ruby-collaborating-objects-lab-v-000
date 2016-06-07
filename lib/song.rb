class Song
# Song will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    name_of_artist   = filename.split(' - ')[0]
    name_of_song     = filename.split(' - ')[1]
    song = self.new(name_of_song)
    song.artist_name = name_of_artist
    song
  end

end
