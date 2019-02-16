class Song
  attr_accessor :name, :artist, :filename

  def initialize(name)
    @name = name
    @artist = artist
  end

  def new_by_filename(filename)
    song = Song.new(filename)
    @filename = filename
  end

end
