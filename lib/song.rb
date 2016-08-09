class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1] #Larry Csonka
    song.artist_name = filename.split(" - ")[0] #Action Bronson
    song 
  end

end

#import - to send the filenames to the Song class. calling #import method
  #Song.new_by_filename(some_filename) - will send us to Song class
#Action Bronson - Larry Csonka - indie.mp3
#Artist - song - genre.mp3