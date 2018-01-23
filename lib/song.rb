class Song
  attr_accessor :name, :artist


  def initialize(name)
    @name = name
    # self.artist = artist
  end

  # def artist=(artist)
  #   @artist = artist
  #   artist.add_song(self)
  # end

  def artist_name(name)
   self.artist = Artist.find_or_create_by_name(name)
   # I moved the artist.find_or_create here from new_by_filename
   self.artist.add_song(self)
 end

  # def self.new_by_filename(filename)
  #   song = self.new(filename)
  #   song.name = filename.split(" - ")[1]
  #   artistname = filename.split(" - ")[0]
  #   song.artist = Artist.find_or_create_by_name(artistname)
  #   song
  # end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist_name(filename.split(" - ")[0])
    song
  end
end
