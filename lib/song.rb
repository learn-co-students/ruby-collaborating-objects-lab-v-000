require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    performer = Artist.find_or_create_by_name(filename.split(" - ")[0])
    performer.add_song(song.name)
    song.artist = performer
    song
  end

end
