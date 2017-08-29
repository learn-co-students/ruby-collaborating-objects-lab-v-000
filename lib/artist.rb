class Artist
  attr_accessor :name, :songs
  
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def name=(name)
    @name = name
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name_string)
    if @@all.detect {|artist| artist.name == name_string} == nil
      name_string = Artist.new(name_string)
    else
      @@all.detect {|artist| artist.name == name_string}
    end

  end

end # End of Class
