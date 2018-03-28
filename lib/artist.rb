class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @song = []
end

def name(name)
  name = artist.name
end

def songs
  @songs
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.find_or_create_by_name

end

def print_songs

end


end
