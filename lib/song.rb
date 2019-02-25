class Song # create songs & send artist name STRING to ARTIST CLASS
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.artist(artist_n_to_find) # this is supposed to be a helper method
    Artist.find_or_create_by_name(artist_n_to_find) # refers to the method created in the Artist class
  end

  def self.new_by_filename(filename)
    #parse the file for the song and artist
    file_split = filename.split(/-/)
    artist_name = file_split[0].strip
    song_name = file_split[1].strip

    #create new song instance
    song_object = Song.new(song_name)
    Song.artist(artist_name) # uses the helper method - which refers to the find_or_create in the Artist class

    #associate new song with an artist
    song_object.artist = artist_name

    #return new song instance
    song_object
  end

end
