class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name) 
    artist.add_song(self)
  end

  
  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    song.artist_name= (file_name.split(" - ")[0])
    song
  #binding.pry
  end

end 
