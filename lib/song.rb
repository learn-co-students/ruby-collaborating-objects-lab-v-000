require 'pry'

class Song
  attr_accessor :name, :filename, :artist_name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def artist=(name) #takes in artist name string and sets @artist to artist object
    @artist = Artist.find_or_create_by_name(name).name
    self.artist
  end


  def self.new_by_filename(filename)
    filename.slice!(".mp3")
    array = filename.split(" - ")
    new_song = Song.new(array[1]) #creates new song
    new_song.artist_name = array[0]
    new_song.genre = array[2]
    #finds artist name
    #if new artist, add artist to artist.all and associate song with that artist.  Else just associate song with that artist.
    artist_obj = Artist.find_or_create_by_name(new_song.artist_name)
    artist_obj.songs << new_song #adds song to artist songs
    new_song.artist  = artist_obj
    if !Artist.all.detect{|artist| artist_obj == artist}
      artist_obj.save #adds Artist to Artist.all if new
      # binding.pry
    end
    # binding.pry
    new_song.save #adds song to songs.all.
    new_song #returns new song
  end

end
