require 'pry'

class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_details = file_name.split(" - ")
    song = self.new(song_details[1])
#    song.artist.name = song_details[0]
    song.genre = song_details[2].split(".")[0]
    #song
  end

end
