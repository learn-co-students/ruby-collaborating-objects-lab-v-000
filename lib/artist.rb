class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all    
  end
  
  def songs
    Song.find_by_artist(self)
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end