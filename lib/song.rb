class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end #def initialize

  def self.new_by_filename(filename)
    filename_array = filename.split(" - ")
    song = self.new(filename_array[1])
    artist = Artist.find_or_create_by_name(filename_array[0])
    song.artist = artist
    artist.add_song(song)
    artist.save
    song
  end #def new_by_filename

end #class Song
