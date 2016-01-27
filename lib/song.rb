class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    parsed = filename.split(/\s-\s|\./)
    song = self.new(parsed[1])
    song.artist_name=(parsed[0])
    @@all << song
    song
  end

  def artist_name=(name)  
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

  def artist_name
    self.artist.name
  end

  def self.all 
    @@all
  end



end








