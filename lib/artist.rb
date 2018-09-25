class Artist
  
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
  
  def self.find(name)
    self.all.find {|n| n.name == name}
  end
  
  def self.create(name)
    self.new(name).tap {|name| name.save}
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
    
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  
end