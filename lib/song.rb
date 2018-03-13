class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename) #'Michael Jackson - Black or White - pop.mp3'
    artist, song = filename.split(" - ") #assign array[0] to artist and array[1] to song
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
