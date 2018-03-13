class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    #binding.pry
    new_song.artist_name = artist #calling artist name on new song

    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) #self refers song instance
    artist.add_song(name)
  end
end
