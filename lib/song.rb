# first attempt 6/25/17
# require 'pry'
#
# class Song
#   attr_accessor :name, :artist
#
#   def initialize(name)
#     @name = name
#   end
#
#   def self.new_by_filename(filename)
#     filename = filename.split(" - ")
#     song = Song.new(filename[1])
#     song.artist = Artist.find_or_create_by_name(filename[0]) #relate to artist
#     song
#   end
#
# end

# second attempt 7/4/17
require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.split(/(\s-\s)|(.mp3)/)
    artist, song = filename[0],filename[2]
    self.new(song).tap {|new_song| new_song.artist_name = artist}
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
