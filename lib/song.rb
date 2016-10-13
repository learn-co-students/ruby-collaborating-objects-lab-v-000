class Song
  attr_accessor :name, :artist


  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    artist, name = file.split(" - ")
    song = self.new(name)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
