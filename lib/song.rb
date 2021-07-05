class Song
  attr_accessor :artist, :name
  @@all = []
#parse a filename to find the song name and artist name (" - ")
# create a new song instance using the string from filenames

#associate new song with an artist use helper method Song#artist=(artist_name)

#return the new song instance

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    artist = file[0]
    song = file[1]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def save
    @@all << self
  end





end
