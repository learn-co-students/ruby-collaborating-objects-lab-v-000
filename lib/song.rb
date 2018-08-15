class Song #song belongs to Artist
attr_reader :artist, :name

  def initialize(name)
    @name = name
    @artist = nil
  end
end
