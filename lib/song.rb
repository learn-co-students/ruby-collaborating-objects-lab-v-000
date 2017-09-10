class Song

  attr_accessor :artist, :name, :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name
    @artist = artist
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(file)
    title = file.split(" - ")[1]
    name = file.split(" - ")[0]
    song = Song.new(title)
    song.artist_name = name
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
