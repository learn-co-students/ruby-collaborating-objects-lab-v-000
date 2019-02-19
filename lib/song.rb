class Song # create songs & send artist name STRING to ARTIST CLASS
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @artist = artist
  end

  def name
    @name
  end

  def artist()
    @artist
  end

  def new_by_filename(file)
    #parse the file for the song and artist
    #create new song instance
    #assciate new song with an artist - helpermethod Song.artist()
    #return new song instance
  end

end
