class Song 
  attr_accessor :genre
  attr_reader :artist, :name
  
  def initialize(name)
    @name = name
    @artist = nil
  end
  
  def name=(name)
    @name = name
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  def self.new_by_filename(file_name)
    # binding.pry
    artist_name, song_name, genre_name = file_name.chomp(".mp3").split(' - ')
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = genre_name
    binding.pry
    song
  end
  
end