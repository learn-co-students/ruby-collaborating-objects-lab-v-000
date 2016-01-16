class Song

  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = file_name.split(" - ")[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end

 

  # def artist
  #   @artist
  # end

  # def artist=(artist)
  #   self.artist = Artist.find_or_create_by_name(artist)
  # end

#   def self.new_by_file_name(file_name)
#     songname = file_name.split(" - ")[1]
#     artistname = file_name.split(" - ")[0]
#     new_song = Song.new(songname)
#     new_song.name = songname
#     new_song.artist = artistname
#     new_song
#   end
 
#  def artist_name=(name)
#     self.artist=Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end

#end
