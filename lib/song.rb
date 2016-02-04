class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    info = file_name.split(" - ")

    song = self.new(name)
    song.name = info[1]
    song.artist_name = info[0]
    song
  end

  def artist_name=(name)
    self.artist.nil? ? self.artist = Artist.new(name) : self.artist.name = name
  end
end