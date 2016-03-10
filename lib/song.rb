require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist=(string)
    obj = Artist.find_or_create_by_name(string)
    obj.add_song(self)
    binding.pry
  end

  def self.new_by_filename(file_name)
    info = file_name.split(" - ")
    song = Song.new(info[1])
    song.artist = info[0]
  end
end