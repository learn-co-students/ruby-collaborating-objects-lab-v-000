class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    song = self.new(song_info[1])
    song.artist_name(song_info[0])
    song.artist.add_song(self)
    song
  end

  def artist_name(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end


end
