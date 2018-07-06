

class Song

  attr_accessor :name, :artist

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    ary = file_name.split(' - ')
    song_name = ary[1]
    artist_name = ary[0]
    new_song = self.new(song_name)
    new_song.artist_name = artist_name
    new_song
  end

end
