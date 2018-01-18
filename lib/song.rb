class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(filename)
    parts = []
    parts = filename.split(" - ")
    Artist.name = parts[0]
    Song.name = parts[1]
  end


end
