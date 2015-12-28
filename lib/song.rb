class Song

  attr_accessor :artist, :name
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_string = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1] 
    song = Song.new(song_name)
    song.artist_name = (artist_string)
    song
  end 

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end