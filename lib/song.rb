class Song 
  
  attr_accessor :name, :artist, :filename
  
  @@all = []
  
  def initialize(name = @name)
    @name = name
    @@all << self
    #@@all << name 
  end
  
  def self.new_by_filename(filename)
    @filename = filename
    song = self.new  
    song.name = filename.split(" - ")[1]
    song
  end
  
  def artist_name=(name)
    #binding.pry
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist = name
    end
  end
  
  def self.all
    @@all
  end
end


  #def artist_name=(name)
    #binding.pry
    #if (self.artist.nil?)
      #self.artist = Artist.new(name)
    #else
      #self.artist = name
    #end
  #end
  