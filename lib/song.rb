require 'pry'

class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

  def artist=(name)
new_artist = Artist.find_or_create_by_name(name)
new_artist.add_song(self)
@artist = name
end


def artist_name=(name)
       self.artist = Artist.new(name)
       self.artist.name

end

def self.new_by_filename(filename)
song_name = filename.split("-")[1].strip
art_name = filename.split("-")[0].strip
new_song = Song.new(song_name)
new_song.artist_name = art_name
new_song

end



end
