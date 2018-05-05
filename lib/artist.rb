class Artist

@@all = []
attr_accessor :name, :song

def initialize(name)
  @name = name
  @song = []
end

def self.all
  @@all
end

def add_song(newSong)
  song << newSong
end

def self.find(name)
  self.all.find {|artist| artist.name == name}
end

def self.create(name)
  self.new(name).tap {|artist| artist.save}
end

def self.find_or_create_by_name(name)
      self.find(name) ? self.find(name) : self.create(name)
end

def save
  @@all << self
end

def print_songs
  songs.each {|song| puts song.name}
end


end
