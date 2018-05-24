class Song
  attr_accessor :genre, :artist, :name
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def self.new_by_filename(file_name)
    artist_name, song_name, genre_name = file_name.chomp(".mp3").split(" - ")
    song = self.new(song_name)
    artist_obj = Artist.find_or_create_by_name(artist_name)
    artist_obj.add_song(song)
    song.genre = genre_name
    song.save
  end
  
end