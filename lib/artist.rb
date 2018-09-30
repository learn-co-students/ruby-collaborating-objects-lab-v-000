class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(name)
    @songs << name
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
    output = nil
    @@all.each do |artist|
      if artist.name == name
        output = artist
      end
    end
    if output == nil
      return Artist.new(name)
    else
      return output
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
