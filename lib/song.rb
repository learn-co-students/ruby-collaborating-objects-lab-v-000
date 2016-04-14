require 'pry'

class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end


def self.new_by_filename(file_name)
  new_song = Song.new(file_name)
  new_song.name = file_name.split(" - ")[1]
  new_song.artist.name = file_name.split(" - ")[0]
  new_song

end


end