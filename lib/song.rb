class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

  def self.new_by_filename(file)
    name = file.split(" - ")[1].sub(".mp3","")
    artist = file.split(" - ")[0]
    song = self.new(name)
    song.artist_name = artist
    song
  end

end