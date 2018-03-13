class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist_info = filename.gsub(/".mp3"/, "").split(" - ")

    new_song = self.new(artist_info[1])
    new_song.artist_name(artist_info[0])

    new_song
  end

end
