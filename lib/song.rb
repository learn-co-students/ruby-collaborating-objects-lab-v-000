class Song
  attr_accessor :name, :title, :artist
  def initialize(name)
    @name = name
    @artist = artist
    @title = title
  end
  def self.new_by_filename(file)
    song = self.new(file.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(file.split(" - ")[0])
    return song
  end
end