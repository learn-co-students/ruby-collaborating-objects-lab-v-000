class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    new_name = filename.split(" - ")[0]
    song = self.new(song_name)
    new_artist = Artist.find_or_create_by_name(new_name)
    song.artist = new_artist
    song
  end

end
