class Artist
  attr_accessor :name

  @@songs = []

  def initialize (name)
    @name = name
  end

  def self.songs(song_one)
    song = Song.new(song_one)
    @@songs << song
  end

end
