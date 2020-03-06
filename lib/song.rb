# song.rb

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_data = file.split(" - ")  #parse file_name by splitting at the " - " to find song name and artist name
    song = self.new(song_data[1])  #create new song using string gathered from filename
    song.artist_name = song_data[0]   #associate new song with an artist using Song#artist_name=(artist_name)
    song #return new song instance
  end
end
