class Song

  def self.new_by_filename(file)
    data = file.split("/").last
    name = data.split(" - ")[1]
    song = Song.new(name)
    artist = Artist.new_by_filename(file)
    song.artist = artist
    song
  end

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


end
