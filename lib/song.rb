class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    song = Song.new(file[1])
    new_artist = Artist.find_or_create_by_name(file[0])
    new_artist.add_song(song)
    song.artist = new_artist
    song
  end

end
