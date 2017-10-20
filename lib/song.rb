class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parsed_filename = filename.split(" - ")
    new_song = Song.new(parsed_filename[1])
    new_song.artist = Artist.find_or_create_by_name(parsed_filename[0])
    new_song.artist.add_song(parsed_filename[1])
    new_song
  end

  def artist=(artist)
    @artist = artist
  end
end
