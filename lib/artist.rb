class Artist

  @@all=[]

attr_accessor :name, :songs


  def initialize(name)
    @name=name
    @songs=[]
    self.save
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.create_by_name(name)
    self.new(name)
  end

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name==name}
  end

  def self.find_or_create_by_name(name)
    self.create_by_name(name) unless self.find_by_name(name)
  end

  def print_songs
   @songs.each {|song| puts song.name}
  end
end
