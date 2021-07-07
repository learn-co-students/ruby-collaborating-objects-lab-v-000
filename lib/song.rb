class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name=(filename.split(" - ")[0])
    song
  end




end
