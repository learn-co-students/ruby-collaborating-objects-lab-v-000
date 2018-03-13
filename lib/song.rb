class Song
attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def name=(name)
   @name = name
  end

  #def artist_name(song, artist)
  #  if (song.artist.nil?)
 #         song.artist = Artist.new(artist)
#    else
#       song.artist.name = artist
#    end
 # end
def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    self.artist.add_song(self)
end

   def self.new_by_filename(file_name)
    file_name_split = file_name.split(" - ")
    a = file_name_split[1]
    b = file_name_split[0]
    new_song = self.new(a)
    new_song.artist_name=b
    new_song
   end
end