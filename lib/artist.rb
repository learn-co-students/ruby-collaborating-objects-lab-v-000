class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def save
    self.class.all << self
  end
  
    def self.find_or_create_by_name(name)   
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def self.find(name)
    self.all.find do |x|
      x.name == name
    end
  end
  
  def self.create(name)
    a = Artist.new(name)
    a.save
    a
  end
  
  def print_songs 
    songs.each {|song| 
    puts song.name}
  end

end


