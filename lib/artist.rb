class Artist
attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
     @songs = []
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

  def name=(name)
   @name = name
  end

  def self.create(name)
     artist = Artist.new(name)
     artist.save
     artist
  end

  def self.find_or_create_by_name(name1)
    self.all.find {|artist| artist.name == name1} || self.create(name1)
end

  def print_songs
  @songs.each do |artist|
    puts artist.name
  end
  end
end