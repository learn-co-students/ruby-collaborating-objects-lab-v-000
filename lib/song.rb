class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file = file.split(" - ")
    song = self.new(file[1])
    artist_name=(file[0])
    song.artist = Artist.find_or_create_by_name(file[0])
    song.artist.add_song(song)
    song
  end


end
