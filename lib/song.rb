class Song
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    self.name = name
    self.artist = Artist.find_or_create_by_name(artist)
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1].gsub(".mp3", ""), filename.split(" - ")[0])
    song.artist.add_song(song.name)
    song
  end

end