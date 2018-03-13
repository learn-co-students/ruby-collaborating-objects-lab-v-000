class Song 

  attr_accessor :name, :artist  

  def initialize(name)
    @name = name
  end 

  def self.new_by_filename(name)
    song_name = name.split(" - ")[1]
    artist_name = name.split(" - ")[0]
    song = self.new(song_name)
    song.artist = artist_name
    art = Artist.find_or_create_by_name(artist_name)

    art.add_song(song)
    song
  end 

end