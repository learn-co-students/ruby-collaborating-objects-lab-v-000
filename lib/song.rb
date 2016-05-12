# A song has a title and belongs to an artist and only one artist

# Attributes
# name
# artist

# Behavior
# create a song
# add artist to a song

 # require 'pry'


class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    array = file_name.split(" - ")
    new_song = self.new(array[1])
    new_song.artist_name = array[0]
    new_song #need to return a song element for the spec to be valid
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end #Closing of the Song class

# new_instance = Song.new_by_filename("Michael Jackson - Black or White - pop.mp3")
# new_instance.name
# new_instance.artist.name
