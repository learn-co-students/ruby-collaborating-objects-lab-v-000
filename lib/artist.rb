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

  def save
    @@all << self
  end

  def self.find(name)
    self.all.detect {|artist| artist if artist.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)#.tap {|artist| artist.save}
    artist.save
    artist
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
    def add_song(song)
      self.songs << song
    end

    def print_songs
      self.songs.each { |s| puts s.name}
    end
end
