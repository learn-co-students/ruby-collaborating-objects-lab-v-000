class Song
  attr_accessor :name, :artist
  @@all =[]

  def initialize(song)
    @name = song
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
 end

 def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
   artist.add_song(self)
 end

 def save
   @@all << self
   self
 end

end
