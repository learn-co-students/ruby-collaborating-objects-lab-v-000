require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(/\s-\s|\.mp3/)
    song = Song.new(filename_array[1])
    artist = Artist.find_or_create_by_name(filename_array[0])
  end

end
