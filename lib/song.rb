class Song
  attr_accessor :name, :artist

  def initialize(name="Default Title")
    @name = name
  end

  def artist_name
    if p defined?(self.artist.name) == "method"
      self.artist.name
    else
      nil
    end
  end
end
