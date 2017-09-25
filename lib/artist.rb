class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name=name
  end

  def songs
    @songs << self.songs
  end 

  def save
    @@all << self
  end 

  def find_or_create_by_name(name)
    if @@all.detect(self.name == name)

    else 
      artist = Artist.new(name)
      artist.save
    end
  end 
  
  def print_songs

  end 
end
