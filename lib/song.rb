class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    elements = filename.split(" - ")
    artist = Artist.find_or_create_by_name(elements[0])
    name = elements[1]
    song = self.new(name)
    artist.add_song(song)
    song.artist = artist
    song
  end
end
