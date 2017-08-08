class Song
  attr_accessor :title, :artist
  @@artists = Array.new
  @@songs = Array.new
  def initialize(artist)
    @artist = artist
    @@artists.push(artist)
  end

end
