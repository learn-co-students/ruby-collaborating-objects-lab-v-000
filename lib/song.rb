class Song
  attr_accessor :Artist, :name

  def initialize(name)
    @name = name
  end

  def artist=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end
