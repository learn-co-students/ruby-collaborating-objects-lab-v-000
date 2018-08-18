class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def self.new_by_filename(file_name)
    file_name = file_name.split(" - ")
    song_name = file_name[1]
    
    artist = Artist.find_or_create_by_name(file_name[0])
    song = Song.new(song_name)
    song.artist = artist
    artist.add_song(song)
    song
  end
  
end