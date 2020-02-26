class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_tune = self.new(song)
    new_tune.artist_name = artist
    new_tune
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) #collaborate with artist class to send the artist's name to the artist class
    artist.add_song(self) #assign the song to the artist and call on the add_song method to collaborate again now that we have the artist instance
  end

end
