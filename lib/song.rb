class Song #song belongs to Artist
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def artist=(artist)#basic instance
    @artist = artist
    artist.add_song(self)# unless artist.song(include?)(self)#this unless is an extra measure
  end

  def self.new_by_filename(filename)
    artist_name, song_name = filename.chomp(".mp3").split(" - ")
    song = self.new(song_name)#created a song
    song.artist = find_or_create_by_name(artist) #no duplicates
    song.genre = genre_name # no method?
    song.save
  end
end
