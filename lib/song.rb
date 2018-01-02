class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # binding.pry
    song = self.new(filename)
    song.name = filename.split(" - ")[1]
    song.artist = Artist.new(filename.split(" - ")[0])
    song
  end
end
