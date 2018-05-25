class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
  end
  
  def name=(name)
    @name = name
  end 
  
  def new_artist=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end 
  
  def self.new_by_filename(filename)
  song_file = filename.split(" - ")
  song = self.new(song_file[1])
  song.new_artist = song_file[0]
  song
  end 
  
end