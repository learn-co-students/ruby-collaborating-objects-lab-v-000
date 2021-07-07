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

  def self.create(name)
    new = Artist.new(name)
    new.save
    new
  end

  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    return @@all.find{ |artist| artist if name == artist.name } ||  Artist.create(name)
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end

end
