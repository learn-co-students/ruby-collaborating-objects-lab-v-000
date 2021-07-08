class Song
  attr_accessor(:name, :artist)
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file = filename.split('-')
    song = self.new(file[1].strip)
    artist = song.artist = Artist.find_or_create_by_name(file[0].strip)
    artist.add_song(song)
    song
  end
end
