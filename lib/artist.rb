class Artist
  attr_accessor :name, :songs
  @@all = []  #stores all instances of Artist 

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song    #Artist.songs reader returns all songs 
                          #stored in @songs
  end

  def save
    @@all << self     #saves all created instances of Artist class in 
                      #@@all class variable
  end

  def self.all      #class method all returns all instances of Artist class 
    @@all
  end

  def self.find_or_create_by_name(name)   #class method uses find/create class 
                                          #methods to detect or create instances
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)     #class method detects instances from @@all class variable
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)   #class method creates & stores instances vs initializing
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs #instance method iterates through @songs of an instance of Artist
    self.songs.each {|song| song.name}
  end
  
  def print_songs
    puts @songs.each { |song| song.to_s }
  end



    
end