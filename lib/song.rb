class Song

  attr_accessor :name, :artist

  def initialize(name="Placeholder")
    @name = name
  end

  def self.new_by_filename(filename)
    split_filename = filename.split(" - ")
    song = Song.new
    song.name = split_filename[1]
    new_artist = Artist.find_or_create_by_name(split_filename[0])
    new_artist.add_song(song)
    song
  end

  def artist_name=(name)
    new_artist=Artist.find_or_create_by_name(name)
    new_artist.add_song(self)
  end

end
