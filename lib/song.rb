
class Song
  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def initialize(name)
    @name = name
    @artist = nil
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.new_by_filename(file_name)
    file_array = file_name.chomp(".mp3").split(" - ")
    song_title = file_array[1]
    artist_name = file_array[0]
    song = self.new(song_title)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.save
    song
  end



end
