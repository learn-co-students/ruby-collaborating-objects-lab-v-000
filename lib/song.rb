require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    name = filename.split(" - ")[1]
    @artist = Artist.find_or_create_by_name(name)
    new_song = Song.new(title)
    new_song
  end


end