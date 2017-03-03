class Song
  #attr_accessor :name, :artist
  def artist=(artist)
    @artist = artist
  end
  def artist
    @artist
    #binding.pry
  end
  def name=(name)
    @name = name
  end
  def name
    @name
  end
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split = filename.split(" - ")
    artist_name = split[0]
    song_name = split[1]
    song = self.new(song_name)
    #binding.pry
    song.artist_name = artist_name
    #to
    #binding.pry
    song
  end

  def artist_name=(name)# a setter method
    #binding.pry
    #a new Artist object instantiated and
    #assigned to @artist
    #as a result of class method, self.artist
    self.artist = Artist.find_or_create_by_name(name)
    #foreign_key_equivalent
    #binding.pry
    artist.add_song(self)
    #adds Song object instance to Artist object instance
    #call artist, which like a foreign_key_equivalent,
    #to allow instance method, add_song from Artist
    #class to receive Song object, self
    #bindinSg.pry
  end
end
