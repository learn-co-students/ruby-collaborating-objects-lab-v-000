class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song.artist_name = filename.split(" - ")[0]
    song = self.new
    song.artist = Artist.find_or_create_by_name(name)
    song
  end
end
