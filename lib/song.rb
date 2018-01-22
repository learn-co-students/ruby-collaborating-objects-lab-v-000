class Song

  attr_accessor :name, :artist


  def initialize(name)
    @name= name
  end


  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end




  def self.new_by_filename(filename=nil)
    artist = filename.split(" - ")[0]
    song = filename.split(" - ")[1]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end
end
