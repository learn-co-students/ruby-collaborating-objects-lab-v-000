class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end


  def self.new_by_filename(filename)
    file_arr = filename.split(" - ")
    nameOfSong = filename.split(" - ")[1]
    nameOfArtist = filename.split(" - ")[0]
    song = self.new(nameOfSong)
    song.artist_name = nameOfArtist
    # p artist
    # p song.artist
    song
  end

end
