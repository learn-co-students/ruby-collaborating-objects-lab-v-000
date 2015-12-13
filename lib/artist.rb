class Artist
   attr_accessor :name
   @@all=[]
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song    
  end
  
  def save
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def self.find_or_create_by_name(name)
    temp_artist = @@all.find{|artist| artist.name == name}
    if temp_artist != nil
      return temp_artist
    else
      temp_artist = Artist.new(name)
      @@all << temp_artist
      return temp_artist
    end
  end
  
  def print_songs
    self.songs.each{|song| print song.name,"\n"}
  #print "Dirty Diana\nBillie Jean\n"  
  end
  
end