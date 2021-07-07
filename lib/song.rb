require 'pry'
class Song
attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(filename)
#    string = String.new('')
    new_title = filename.split(" - ")
    song = Song.new(new_title[1])
    #song.artist=(new_title[0])
    artist = Artist.find_or_create_by_name(new_title[0])
    #a= Artist.new('Prince')
    #a.nam
    artist.add_song(song)
    song.artist = artist
    return song
  end

end
