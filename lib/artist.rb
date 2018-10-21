class Artist
  attr_accessor :name
  @@songs = []

  def initialize (name)
    @name = name
  end

  def self.songs(song_one)
    song = Song.new(song_one)
  end

  def add_song(song_title)
    song = Song.new(song_title)
    @@songs << song
  end

end
