class Song
  attr_accessor :name, :artist


  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist.name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(filename)

  end

end
