class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)
    self.detect(artist_name) ? self.detect(artist_name) : self.new(artist_name)
  end

  def self.detect(artist_name)
     self.all.detect {|x| x.name == artist_name }
   end


  def print_songs
    songs.each {|x| puts x.name}
  end

  def add_song(song)
    @songs << song
  end

end
