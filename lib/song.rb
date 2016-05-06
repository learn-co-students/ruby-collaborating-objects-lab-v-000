require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    #binding.pry
    artistname = file_name.split(" - ")[0]
    songname = file_name.split(" - ")[1]
    new_instance = Song.new(songname)
    new_instance.artist = Artist.find_or_create_by_name(artistname)
    new_instance

  end

end