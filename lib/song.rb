class Song 
  
  attr_accessor :name, :artist 
  attr_reader :songs 
  
  def initialize(name)
    @name = name
  end 
  
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    artist.save
    song
  end 
  
  
end 
