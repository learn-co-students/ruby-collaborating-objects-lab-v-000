class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist)
    artist_name = Artist.new(artist)
    name.artist = artist_name
  end
  
  def self.new_by_filename

  end

end