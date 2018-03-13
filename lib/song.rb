class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def artist_name
    @artist ? @artist.name : nil
  end
  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    song = self.new(parts[1].split(".mp3")[0])
    song.artist = Artist.find_or_create_by_name(parts[0])
    song.artist.add_song(song)
    song
  end
end
