
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name) # not my own method
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end

  def self.new_by_filename(file)
    song = self.new(file)
    data = file.split(" - ")
    song.name = data[1]
    song.artist_name = data[0]
    song
  end
end
