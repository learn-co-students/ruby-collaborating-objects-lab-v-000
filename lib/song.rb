class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    info = filename.split(" - ")
    song = self.new(info[1])
    song.artist = Artist.find_or_create_by_name(info[0])
    song.artist.add_song(song)
    song
  end

end
