class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=
    if self.artist
      self.artist.name
  end

end
