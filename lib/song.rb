class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    name = filename.split(/\ - /)
    song = self.new(name[1])
    artist = Artist.new(name[0])
    artist.save
    artist.add_song(song)
    song.artist = artist
    song
  end
end