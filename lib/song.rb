

class Song

  attr_accessor :name, :artist, :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    ary = file_name.split(' - ')
    song_name = ary[1]
    artist_name = ary[0]
    new_song = self.new(song_name)
    new_song.artist = Artist.new(artist_name)
    new_song
  end

end
