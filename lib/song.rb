require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)  # filename argument passed from MP3Importer Class
    song = self.new(filename)  # create a song instance
    song.name = filename.split(" - ")[1]  # song name equals filename index[1]
    name = filename.split(" - ")[0]  # artist name equals filename index[0]
    song.artist_name = name  # assign song an artist name
    song  # Song instance includes artist name and song name
    #binding.pry
  end

  def artist_name=(name)  # artist setter method
    self.artist = Artist.find_or_create_by_name(name)  # whatever the #.find_or_create_by_name method
    # produces is assigned to self.artist
    artist.add_song(self)  # adds Song instance to @songs varialble in Artist class
    #binding.pry
  end
end
