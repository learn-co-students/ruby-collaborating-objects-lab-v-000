class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    @artist = artist
  end


  def self.new_by_filename(filename)
    song_data = filename.split(" - ")
    new_song = Song.new(song_data[1])
    artist = Artist.find_or_create_by_name(song_data[0])
    new_song.artist = artist
    artist.add_song(new_song)
    new_song
  end

end




