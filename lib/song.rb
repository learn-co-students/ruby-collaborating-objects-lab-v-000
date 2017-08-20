require "pry"
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_split_array = filename.split(" - ")
    new_song = Song.new(filename_split_array[1])
    new_song.set_artist(filename_split_array[0])
    new_song
  end

  def set_artist(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
end