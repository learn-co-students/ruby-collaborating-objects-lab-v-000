class Artist
@@all = []

attr_accessor :name,:songs

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def add_song(song)
  @songs << song
end


def save
  @@all << self
end

def self.all
  @@all
end

def self.find_or_create_by_name(name)
  @@all.each do |object|
    if object.name == name
      return object
    end
end

return Artist.new(name)
end

def print_songs
@songs.each do |object|
  puts object.name
end
end

end
