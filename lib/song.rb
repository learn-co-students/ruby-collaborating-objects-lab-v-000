class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.name if artist
  end

  def self.new_by_filename(file)
    name = file.gsub(".mp3","").split(" - ")
    s = Song.new(name[1])
    s.artist_name = name[0]
    s
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
