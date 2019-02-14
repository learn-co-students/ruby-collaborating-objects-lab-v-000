class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist
    @artist = artist
  end

  def new_by_filename(file_name)
    song = Song.new(file_name)
  end

end
