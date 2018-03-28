class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @genre = genre
  end #def initialize

  def self.new_by_filename(filename)
    filename_array = filename.split(" - ")
    song = self.new(filename_array[1], @artist)
    @artist = Artist.find_or_create_by_name(filename_array[0])
    genre = filename_array[2]
    @artist.add_song(song)
    @artist.save
    song.artist = @artist
    song
  end #def new_by_filename

end #class Song
