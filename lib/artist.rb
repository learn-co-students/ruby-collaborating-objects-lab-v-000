class Artist
attr_accessor :name

  def initialize(name)
    self.name = name
    @songs = []
  end

  def songs(song_name)
    @songs << song_name
  end



end
