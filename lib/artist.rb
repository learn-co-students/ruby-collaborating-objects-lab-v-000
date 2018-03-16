class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @songs = []
end

def name=(name)
  @name = name
end

def add_song(song)

end

def songs
  @songs
end

private

def save

end

def find_or_create_by_name(name)

end

def print_songs

end

def self.all

end

end
