class Artist
  attr_accessor :name, :songs
  @@all=[]

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
    # @@all << self
  end

  def self.find_name(name)
    self.all.find {|x| x.name == name }
  end

  def self.find_or_create_by_name(name)
    if self.find_name(name) 
      self.find_name(name) 
    else
     Artist.new(name)
    end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
