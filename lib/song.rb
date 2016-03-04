class Song

  attr_accessor :artist, :name
 
    def initialize(name)
        @name = name
    end
 
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end