require 'pry'

class Song
  
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file_name)
    data = file_name.split(" - ")
    song = self.new(data[1])
    song.artist_name=(data[0])
    song
  end
end