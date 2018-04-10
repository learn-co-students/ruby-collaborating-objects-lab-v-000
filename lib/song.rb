class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name= (artist_name)
    Artist.find_or_create_by_name(artist_name)
  end


  def self.new_by_filename(fn)
    name = fn.split(" - ")[1]
    artist_name = fn.split(" - ")[0]
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)
    
    song
  end

end
