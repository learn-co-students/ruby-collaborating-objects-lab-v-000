class Song
  attr_accessor :name, :artist
  @@songs = []
  def initialize(name=nil)
    @name=name
  end
  def self.new_by_filename(file_name)
    song = Song.new
    song.name = file_name.split(" - ")[1]
    name = file_name.split(" - ")[0]
    song.artist_name=(name)
    song
  end
  def artist_name
    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end
  def artist_name=(name)
    artist = Artist.new(name)
    self.artist = artist
  end
  def songs_add
    @@songs << self
  end
end
