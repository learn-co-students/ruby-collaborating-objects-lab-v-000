class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.all=(value)
    @@all=value
  end

  def save
    self.class.all << self
  end
  
  def self.remove_duplicates
    self.all.uniq!
  end

  def self.create_by_name(name)
    new = self.new(name)
    new
  end

  def self.find_or_create_by_name(name)
    find = self.all.find{|artist| artist.name==name}
    find!=nil ? find : self.create_by_name(name)
  end

  def print_songs
    @songs.each{|song|puts song.name}
  end

end