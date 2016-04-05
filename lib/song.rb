class Song
  
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

# helper to .new_by_filename --> gets the artist object by the same name
  def self.artist=(artist_name)
    Artist.find_or_create_by_name(artist_name)
    artist.add_song(self) # --> Is this right? Does this work?
  end

  def self.new_by_filename(file)
    artist, song = file.split(" - ") # parses file into artist and song strings
    song = self.new(song) # instantiates new song from song string
    song.artist = Artist.find_or_create_by_name(artist) # calling on artist object to link with song instance
    song
  end
end
