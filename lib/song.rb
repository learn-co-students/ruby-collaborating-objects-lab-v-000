class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def artist_name=(artist_name)
      self.artist = Artist.find_or_create_by_name(artist_name)

  end

  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    title = filename.split(" - ")[1].gsub(".mp3", "")
    song = self.new(title)
    song.artist_name=(artist)
    song
  end


end
