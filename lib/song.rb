class Song
  attr_accessor :name, :artist

  #accepts a name for song
  #sets the song name
  def initialize(name)
    @name = name
    @artist = artist
  end
  
  #sets the artist object to belond to the song
  def self.new_by_filename(file_name)
    name = file_name.split(" - ")[1] 
    new_song = self.new(name)
    artist_name = file_name.split(" - ")[0]
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(new_song)
    new_song
  end

end