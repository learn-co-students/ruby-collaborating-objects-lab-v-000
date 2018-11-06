
class Artist
attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = [] #research why @songs but not @@songs
end

def add_song(song)
  self.songs << song
end

def self.all #instead of def all which is an instance method we use self to make it a class method
  @@all
end

def save
  @@all << self
end

def self.find_or_create_by_name(name)
  @@all.find do |name|
  if name == Artist.name
    Artist.name
  else
    name = Artist.new(name)
  end
  end
end



end
