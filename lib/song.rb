class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    parts = []
    parts = file_name.split(" - ")
    song = Song.new(parts[1])
    song.artist_name = parts[0]
    #song.name = parts[1]
    song
  end

  def artist_name=(name)
    #name = self.artist
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
