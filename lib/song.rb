class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    #new_artist_object = Artist.new(artist)
    #self.artist = Artist.new(artist)
  end



end
