class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    if artist.is_a? String
      artist_instance = Artist.find_or_create_by_name(artist)
      artist_instance.add_song(self)
      @artist = artist_instance
    else
      artist.add_song(self)
      @artist = artist
    end
  end

  def self.new_by_filename(filename)
    filename_split = filename.split(" - ")
    song = self.new(filename_split[1])
    song.artist=(filename_split[0])
    song
  end
end
