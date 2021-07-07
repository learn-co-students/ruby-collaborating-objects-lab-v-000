class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename) #take out -
    song_name = self.new(filename.split(" - ")[1]) #Song.new(filename)
    song_name.artist_name = (filename.split(" - ")[0])
    song_name #return song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
