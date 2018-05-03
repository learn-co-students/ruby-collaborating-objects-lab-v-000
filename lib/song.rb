require 'pry'

class Song
  attr_accessor :name, :artist
  

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_array = file_name.split(" - ")
    song=Song.new(file_array[1])
    artist =Artist.find_or_create_by_name(file_array[0])
    artist.add_song(song)
    song
  end

  def artist_name=(name)
    self.artist = name 
  end 
  

end

