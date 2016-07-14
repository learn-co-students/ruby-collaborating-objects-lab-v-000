# Song Class
class Song
  attr_accessor :name, :artist, :genre

  def initialize(title)
    @name = title
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist, title = filename.split(' - ')

    song = self.new(title)
    song.artist_name = artist
    song
  end
end
