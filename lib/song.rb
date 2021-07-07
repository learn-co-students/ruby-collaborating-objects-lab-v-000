
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.add_song(self)

  end


  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    song = file[1]
    new_song = self.new(song)
    new_song.artist_name=(file[0])
    new_song

  end


end

# def artist=(name)
#   if self.artist.nil?
#     artist.name = Artist.new(name)
#   else
#     self.artist.name = name
#   end
# end
