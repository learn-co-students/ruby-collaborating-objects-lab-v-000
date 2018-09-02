class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # Create a new song instance using the files imported from the MP3Importer class.
  # Split the file_name and add the song title as the argument for initializing
  # a new song instance. Save the artist name into the artist_name variable.
  # Return and call the #artist_name=(artist_name) method on the newly created
  # song instance.
  def self.new_by_filename(file_name)
    song = Song.new(file_name.split(" - ")[1])
    song.artist_name=(file_name.split(" - ")[0])
    song
  end

  ## Alternate Song.new_by_filename(file_name) Method ##
  # def self.new_by_filename(file_name)
  #   artist, song = file_name.split(" - ")
  #   new_song = self.new(song)
  #   new_song.artist_name = artist
  #   new_song
  # end

  # This is a helper method meant to associate the new song instance with the
  # artist from the artist_name variable (which was parsed from the file_name
  # variable). Use the Artist class's #find_or_create_by_name method with an
  # argument of artist_name to create a new artist object and assign it to the
  # current instance of song. Add the current instance of song to the artist
  # instance using the Artist class's #add_song method.
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

end
