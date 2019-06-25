class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(file)
    filename = file.split(" - ")
    song = self.new(filename[1])
    artist = Artist.find_or_create_by_name(filename[0])
    song.artist = artist 
    artist.add_song(song)
    artist.save
    song 
  end 
  
end 