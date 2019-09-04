class Song
  attr_accessor :name, :artist

  #parse a filename to find the song name and artist name.
  # # # note - every filename is separated by " - "
  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    file_details = filename.split(" - ")
    artist = file_details[0]
    song = file_details[1]
    #create a new song instance using the string we gather from filename
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end


  #associate the new song with an artist.
  # # # note - use helper method: artist_name=(artist_name)
  #this method should takes in the name and gets the artist object
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  #return the new song instance
    artist.add_song(self)
  end



end
