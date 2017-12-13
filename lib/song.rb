
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")

    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end


# require 'pry'
# class Song
#   attr_accessor :artist, :name
#   @@all = []
#
#   def initialize(name, artist)
#     @name = name
#     @artist = artist
#   end
#
#   def self.new_by_filename(filename) #figure out what the filename format is, and use split or gsub.
#     # binding.pry
#     artist, song = filename.split(" - ")
#     new_song = self.new(song)
#     new_song.artist_name= artist
#     new_song
#   end
#
#   def artist_name=(name)
#      @name = name
#      self.artist= Artist.find_or_create_by_name(name)
#      artist.add_song(self)
#   end
# end
