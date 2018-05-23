
class Song
  attr_reader :name, :artist
  
  def initialize(song_name)
    @name = song_name
  end

  def name=(song_name)
    @name = song_name
  end

  def artist=(name)
    @artist = Artist.find_or_create_by_name(name)
    # @artist.add_song(self)
  end

  def new_by_filename(filename)
    # use the split trick
    # make new 
    # set artist_name (may need custom getter) 
    # return instance
  end

end