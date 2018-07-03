class Artist


attr_accessor  :name, :artist

@@all = [] #stores all instances of Artist


def initialize(name)
  @name = name
  @songs =[]
end

def add_song(song)
  @songs << song #stores all songs in @songs
end

def songs
  @songs
end

def save
  @@all << self #pushes all created instances of Artist class in @@all class variable
end

def self.all
  @@all #class method returns all instances of Artist class
end


def self.find_or_create_by_name(name)
  if self.find(name)
    self.find(name)
  else
    self.create(name)
  end
end

def self.find(name)
  self.all.find {|artist| artist.name == name }
end

def self.create(name)
  #class method that creates a new artist and sets it to artist variable and save that artist
artist = Artist.new(name)
artist.save
artist
end


def print_songs
  songs.each {|song| puts song.name}
end

end
