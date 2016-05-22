require 'pry'

class Song
  attr_accessor :title, :artist
  attr_reader 

  def initialize(title)
    @title = title
    @artist = artist
  end

  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
  
    
end #of class Song