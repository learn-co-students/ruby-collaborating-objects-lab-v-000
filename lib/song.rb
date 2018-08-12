class Song
  attr_accessor :artist, :name

  def initialize(name="")
      @name = name
  end


  def self.new_by_filename(file)
    song = Song.new
    song_name = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]
    song.artist_name = artist_name
    song.name = song_name
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end


end
