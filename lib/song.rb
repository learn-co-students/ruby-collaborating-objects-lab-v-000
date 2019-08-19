class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name = @name)
    @name = name
    @@all << self
    #@@all << name 
  end
  
  def self.new_by_filename(filename)
    @name = name
    song = self.new  
    song.name = filename.split(" - ")[1]
    song
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def self.all
    @@all
  end
end