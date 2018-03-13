class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end


  def songs
    @songs
  end

  def save
  @@all << self
end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
    # changed from self.new(name) -- this fixed error (saving)
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)

  end

  def add_song(song)

    @songs << song
  end

def print_songs
  songs.each {|song| puts song.name}
end


end
