require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    file_name = file_name.split(" - ")
    artist = file_name[0]
    song = file_name[1]
    genre = file_name[2]
    instance = self.new(song)
    instance.artist_name(artist)
    instance
  end
end
