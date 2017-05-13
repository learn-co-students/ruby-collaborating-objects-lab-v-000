class Artist

  attr_accessor :name, :songs
  @@all =[]


  def initialize(name)
    @name = name
    @songs = []
    self.save
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

  def self.find_or_create_by_name(name)
    @@all.each {|artist|
      if artist.name == name
        return artist
      else
        self.new(name)
      end
    }
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name }
  end

end
