class Artist
  attr_accessor :name, :songs

  @@all = []
 
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all #class method
    @@all
  end

  def add_song(song) #instance method
    @songs << song
  end 

  def save #instance method
    @@all << self
  end

  def self.find(name) #class method
    self.all.detect{|artist| artist.name == name}
  end

  def self.create(name) #class method
    #tap is to make manipulation on object before returning it.
    self.new(name).tap(&:save)
  end

  def self.find_or_create_by_name(name) #class method
    self.find(name) || self.create(name)
    end
  end

  def save #instance method
    @@all << self
  end

  def print_songs #instance method
    songs.each do |song|
      puts song.name
    end
  end
 
end