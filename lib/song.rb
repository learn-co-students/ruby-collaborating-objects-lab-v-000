class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    name = data[1]
    song = self.new(name)
    song.artist = data[0]
    song.artist_name
    song
  end

  def artist_name
    Artist.find_or_create_by_name(self.artist).add_song(self)
  end
end