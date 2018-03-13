class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if @@all.detect{|x| x.name == name}
      @name = name
      artist = @@all.detect{|x| x.name == name}
    else
      artist = self.new(name)
    end
  end

  def print_songs
     puts @songs.map{|x| x.name}
  end

end
