require 'pry'

class Song

  attr_accessor :artist, :name, :song

  def initialize(name)
    @name = name

  end


  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist= Artist.find_or_create_by_name(file_name.split(" - ")[0])
    return song


  end



end