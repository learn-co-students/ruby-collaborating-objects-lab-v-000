class Song
  attr_accessor :name, :artist

  def initialize(name, artist = nil)
    self.name = name
    self.artist = artist
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1].gsub(".mp3", ""), filename.split(" - ")[0])
    Artist.find_or_create_by_name(song.artist).add_song(song.name)
  end

end