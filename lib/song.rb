require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(filename)
  #  binding.pry
    data = filename.split(" - ")
    title = data[1]
    name = data[0]
    song = self.new(title)
    song.artist_name = name
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
