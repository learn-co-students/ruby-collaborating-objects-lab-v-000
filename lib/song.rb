require "pry"
class Song

  @@all = []
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  def self.new_by_filename(file_name)
    song = Song.new(file_name.split(" - ")[1])
    artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    artist.add_song(song)
    song
  end

end
