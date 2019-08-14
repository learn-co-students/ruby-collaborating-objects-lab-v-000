
require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    #is artist= an Artist object?
    # self.artist = @artist
  end

  def artist_name
    self.artist.name

  end

  def self.new_by_filename(file)
    split_song = file.split(" - ")
    # binding.pry
    new_song = Song.new(split_song[1])
    new_song.artist = Artist.find_or_create_by_name(split_song[0])
    new_song.artist.add_song(new_song)
    new_song
  end
end
