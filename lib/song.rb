class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
    artist, name = filename.split("-").map(&:strip)
    name = self.new(name)
  end 

  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  
 end