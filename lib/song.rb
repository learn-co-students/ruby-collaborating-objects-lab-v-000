class Song # create songs & send artist name STRING to ARTIST CLASS
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @artist = artist
  end

  def name
    @name
  end

  def artist
    @artist
  end

  def self.new_by_filename(filename)
    #parse the file for the song and artist
    file_split = filename.split(/-/)
    artist_name = file_split[0].strip
    song_name = file_split[1].strip
    #create new song instance
    song_object = Song.new(song_name)
    #associate new song with an artist - helpermethod Song.artist()
    song_object.artist.name = artist_name
    #return new song instance
    song_object
  end

end
