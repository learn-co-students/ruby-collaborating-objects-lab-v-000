class Artist
  attr_accessor :name, :songs
  @@all = [] #class variable. container for all Artist instances
  
  def initialize(name)
    @name = name
    @songs = [] #add_song doesn't work without this
  end
  
  def self.all #this is needed for save method
    @@all    
  end  

  def add_song(song) #keeps track of an artist's songs
    @songs << song
  end

  def save #adds the artist instance to the @@all class variable
    @@all << self
  end

  def self.find(name) #class method
    self.all.find {|artist| artist.name == name }
  end
  
  def self.find_or_create_by_name(name) #class method. find or create artist
    self.find(name) ? self.find(name) : self.create(name)
  end  

  #def self.create(name)
  #  self.new(name).tap {|artist| artist.save}
  #end
  
  def self.create(name) #class method
    artist = self.new(name)
    artist.save
    artist
  end  

  def print_songs
    #lists all of the artist's songs
    @songs.each do |song|
      puts song.name
    end
  end
  
  #def print_songs
  #  songs.each {|song| puts song.name}
  #end  
  
end
#code from before improvements
=begin  
  def initialize(name)
    @name = name
    @songs = [] #add_song doesn't work without this
  end

  def self.all #this is needed for save method
    @@all
  end
  
  def add_song(single_song)
    #keeps track of an artist's songs
    #song = Song.new(song_one)
    @songs << single_song
  end
  
  def self.find_or_create_by_name(string)
    #class method
    #finds or creates an artist by name maintaining uniqueness of objects by name property
   
    #Artist.all.detect(string) ? self.name : artist = Artist.new(string)
    #Artist.all.detect(string) ? self.name : self.new(string)

  #  if self.find(string)
  #    self.name
  #  else
  #    self.create(string)
  #  end
   
    self.find(string) ? self.name : self.create(string)
  end
  
  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def save #adds the artist instance to the @@all class variable
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def print_songs
    #lists all of the artist's songs
    @songs.each do |song|
      puts song.name
    end
  end
=end