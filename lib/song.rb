require 'pry'
#Song
  #initialize with #name
  #  accepts a name for the song (FAILED - 12)
  #name=
  #  sets the song name (FAILED - 13)
  #artist=
  #  sets the artist object to belong to the song (FAILED - 14)
#  .new_by_filename
  #  creates a new instance of a song from the file that's passed in (FAILED - 15)

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
     song = self.new(file.split("-")[1].strip)
     song.artist = Artist.find_or_create_by_name(file.split("-")[0].strip)
     song.artist.songs << song.name
     song
   end
end
