class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
    @artist.add_song(self.name)
  end
  
  def self.new_by_filename(filename)
    new_song_name = filename.chomp(".mp3").split(" - ")
    song = Song.new(new_song_name[1])
    song.artist_name = new_song_name[0]
    song
  end
end