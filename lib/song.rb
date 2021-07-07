class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    name = split_name[1]
    artist_name = split_name[0]
    genre = split_name[2].chomp(".mp3")
    #binding.pry
    new_song = Song.new(name)
    new_song.artist_name=(artist_name)
    new_song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    #binding.pry
    self.artist.add_song(self)
  end

end
