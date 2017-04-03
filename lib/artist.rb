class Artist
  attr_accessor :name
  @@all = []
  @@all_names = []
  def initialize(name)
    @name = name
    @songs = []
    @@all_names<<name
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.find_or_create_by_name(name)
    if @@all_names.include?(name) ==false
      return Artist.new(name)
    else @@all.find {|artist| artist.name= name}
    end

  end

  def add_song(some_song)
    @songs <<some_song
  end

  def songs
    return @songs
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
