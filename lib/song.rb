class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    song = self.new(name)
    song.artist_name = filename.split(" - ")[0]
    song
  end

  def  artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
   @artist.add_song(self)
end
end
