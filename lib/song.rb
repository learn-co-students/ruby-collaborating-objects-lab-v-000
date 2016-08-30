class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = Song.new(name)
    song.name = filename.split(" - ")[1]

  end


end
