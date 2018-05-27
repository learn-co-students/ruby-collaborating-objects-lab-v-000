class Song
  attr_accessor :name, :artist

  def initialize(song)
    @name = song
  end

  def self.new_by_filename(filename)
    parse = filename.split(" - ")
    artist = Artist.find_or_create_by_name(parse[0])
    song = Song.new(parse[1])
    artist.add_song(song)
    song.artist = artist
    song
  end
end
