require 'pry'


class Song 


  attr_accessor :name, :artist

  def initialize(name)
    @name = name  
  end 


  def self.new_by_filename(filename_string)

    file = filename_string.split(" - ")
    song_name = file[1]
    song_artist = file[0]



    artist = Artist.find_or_create_by_name(song_artist)

    new_instance = Song.new(song_name)
    new_instance.artist = artist
    new_instance
  end 

end 