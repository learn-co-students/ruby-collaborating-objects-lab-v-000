class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file_name)
    self.artist = file_name.split(" - ")[0]
    self.name = file_name.split(" - ")[1]
  end

  def self.artist_name
    self.artist.name
  end

end