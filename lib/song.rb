class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1] #Larry Csonka
    artist_name = filename.split(" - ")[0] #Action Bronson
    song.artist = Artist.find_or_create_by_name(artist_name) #review why this works
    song 
  end

end

 # def import
 #    self.files.each {|filename| Song.new_by_filename(filename)}
 #  end

#Action Bronson - Larry Csonka - indie.mp3
#Artist - song - genre.mp3
