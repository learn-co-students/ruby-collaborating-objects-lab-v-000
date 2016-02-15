class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    end


  def artist_name
    self.artist == nil ? nil : self.artist.name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    song = Song.new(data[1])
    artist = Artist.find_or_create_by_name(data[0])
    song.artist = artist
    song
  end

end