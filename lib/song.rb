class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # parts = filename.split(" - ")
    # artist_name = parts[0]
    # song_title = parts[1]

    # song = self.new(song_title)
    # song.artist = Artist.new(artist_name)
    # song

    artist, song = filename.split(" - ")
    new_song = self.new(song)
    ## .artist_name= method is below...
    new_song.artist_name = artist
    new_song
  end

  ## The .artist_name= method is a helper method
  ## for the .new_by_filename class method

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end