class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(name)
    @artist = name
  end

  def self.new_by_filename(file)
    f = file.split(" - ")
    s = Song.new(f[1])
    s.artist = Artist.find_or_create_by_name(f[0])
    s.artist.add_song(s)
    s
  end
end
