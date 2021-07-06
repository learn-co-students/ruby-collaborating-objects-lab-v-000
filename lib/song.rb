class Song
  
  require 'pry'
  
  attr_accessor :artist, :name
  
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
  end
  
  def self.new_by_filename(file_name)
    song_name = file_name.split( ' - ' )[1]
    artist_name = file_name.split( ' - ' )[0]
    @artist = Artist.find_or_create_by_name(artist_name)
    @name = song_name
    song = self.new(@name, @artist)
    @artist.add_song(song)
    @artist.save
    song
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
end
