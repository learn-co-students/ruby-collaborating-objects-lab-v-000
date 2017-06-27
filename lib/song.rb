class Song

  attr_accessor :artist, :name

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self)
  end

  def artist_name
    self.artist.name
  end

  def self.new_by_filename(file)
    song = self.new(file.split(" - ")[1])
    song.artist_name = file.split(" - ")[0]
    song
  end


end
