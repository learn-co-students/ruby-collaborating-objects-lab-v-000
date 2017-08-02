require 'pry'
class Song

attr_accessor :artist, :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
 @@all
 end

  def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
     self.artist.add_song(self)
end

def self.new_by_filename(filename)
  # ' action bronson = asdsad  - hiphop'
  song_name = filename.split(" - ")[1]
  # ' Larry Csonka'
  artist_name = filename.split(" - ")[0]
  song = self.new(song_name)
  # <# Song name='Larry Csonka'>

  song.artist_name = artist_name
  song

end


end
