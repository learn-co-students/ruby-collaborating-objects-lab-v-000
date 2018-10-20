class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def artist_name
    self.artist.name
  end

  def self.new_by_filename(filename)
    split_names = filename.split(" - ")
    song = self.new(filename)
    song.name = split_names[1]
    song.artist_name = split_names[0]
    song
  end

end
