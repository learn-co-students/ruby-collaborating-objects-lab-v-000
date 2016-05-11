# A song has a title and belongs to an artist and only one artist

# Attributes
# name
# artist

# Behavior
# create a song
# add artist to a song

 require 'pry'


class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_name_array = file_name.split(" - ")
    artist_name = file_name_array[0]
    song_name = file_name_array[1]
    song = self.new(song_name)
    song.artist_name = artist_name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
#new_instance = Song.new_by_filename("Michael Jackson - Black or White - pop.mp3")
# new_instance.name
# new_instance.artist.name
