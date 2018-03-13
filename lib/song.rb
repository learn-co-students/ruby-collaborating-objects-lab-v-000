class Song
  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name=name
  end

  def self.new_by_filename(filename)
    filename = filename.split(" - ")
    song = self.new(filename[1])
    song.artist = Artist.find_or_create_by_name(filename[0])
    song
  end
end
