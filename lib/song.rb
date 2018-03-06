
class Song
  attr_accessor :artist_name, :name, :artist


  def initialize(name)
    @name = name
  end



def self.new_by_filename(filename)
  splitname = filename.split(" - ")
  song = self.new(splitname [1])
  artist = Artist.find_or_create_by_name(splitname[0])
  song.artist = artist
  artist.add_song(song)
  song
end
end
