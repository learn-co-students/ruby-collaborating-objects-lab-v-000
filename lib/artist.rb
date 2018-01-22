class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    #@@songs << Song.artist_name = self
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.find {|artist| artist.name == name} || Artist.new(name).tap { |art| art.save }

  end

#we need to add logic such that
  #if artist already exists and !(songs includes the artists song we are adding)
    #add_song to @songs
  # else

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
