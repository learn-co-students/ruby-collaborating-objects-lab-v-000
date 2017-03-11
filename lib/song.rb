class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    song = Song.new
    song.name = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    song
  end
end
