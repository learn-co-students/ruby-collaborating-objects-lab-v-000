class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
   artist.add_song(self)
 end

  def self.new_by_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1]
    genre_s = parts[2].gsub(".mp3","")

    self.new(song_name).tap {|song| song.artist = artist_name}
  end

  def self.new_by_filename(filename)
     artist, song = filename.split(" - ")
     new_song = self.new(song)
     new_song.artist_name = artist
     new_song
   end
   
end
