class Song
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
  end
  def self.artist(name)
    Artist.find_or_create_by_name(name)
  end
  def self.new_by_filename(filename)
    filename = filename.split(/( - |\.)/)
    song = self.new(filename[2])
    song.artist = self.artist(filename[0])
    song.genre = filename[4]
    song
  end
end
