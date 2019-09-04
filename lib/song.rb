require "pry"

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    array = file_name.split(" - ")
    song_file = Song.new(array[1])
    song_file.artist = Artist.find_or_create_by_name(array[0])
    binding.pry
    song_file 
  end
end
