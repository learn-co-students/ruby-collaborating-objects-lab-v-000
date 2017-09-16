class Artist
  attr_accessor :name, :songs

  @@all = []

def self.all
  @@all
end

  def initialize(name)
    @name = name
    @songs = []
    save
  end

def save
  self.class.all << self
end

def self.find(name)
  self.all.detect {|artist| artist.name == name}
end

def self.create(name)
  artist = self.new(name)
  artist.name = name
  artist
end

def self.find_or_create_by_name(name)
  self.find(name)? self.find(name) : self.create(name)
end

def add_song(song)
  @songs << songs
end

end
