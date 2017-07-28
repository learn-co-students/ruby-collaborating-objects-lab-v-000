class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file)
    file_parts = file.split(" - ")
    this_artist = Artist.find_or_create_by_name(file_parts[0])
    this_song = Song.new(file_parts[1])
    this_artist.add_song(this_song)
    this_song
  end
end
