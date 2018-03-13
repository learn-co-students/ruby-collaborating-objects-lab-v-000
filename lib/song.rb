class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist, name = filename.split(" - ")
    newsong = self.new(name)
    newsong.artist_name = artist
    newsong
  end

end
