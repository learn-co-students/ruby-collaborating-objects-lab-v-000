class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, file_song = filename.split(" - ")
    song = self.new(file_song)
    song.artist_name = artist
    song
  end

  def artist_name=(name)

     artist_name = Artist.find_or_create_by_name(name)
     self.artist = artist_name
     artist.add_song(self)

   end

end
