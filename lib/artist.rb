class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.create
      artist = self.new
      @@all << artist
      artist
  end

  def self.create_by_name(name)
    artist = self.new
    @name = name
    @@all << artist
    artist
  end

  def self.find_by_name(name)
   @@all.find { |artist| artist.name == name }
  end



def self.find_or_create_by_name(name = nil)
  if @@all.empty? == true
    self.create
  elsif self.find_by_name(name) == nil
     self.create_by_name(name)
  else self.find_by_name(name)
   end
end

def print_songs
print @songs
end

end
