require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_details = file_name.split(" - ")
    song = self.new(song_details[1])
    song.artist = Artist.find_or_create_by_name(song_details[0])
    song
  end

end
