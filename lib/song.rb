class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(/\s-\s/)
    song_title = data[1]
    artist_name = data[0]
    song = self.new(song_title)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end
end
