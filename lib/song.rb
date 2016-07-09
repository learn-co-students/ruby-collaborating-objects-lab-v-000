require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(title)
    self.name = title
  end

  def self.new_by_filename(filename)
    new_song = new(filename.split(/ - /)[1])
    new_song.artist = Artist.find_or_create_by_name(filename.split(/ - /)[0])
    new_song
  end
end