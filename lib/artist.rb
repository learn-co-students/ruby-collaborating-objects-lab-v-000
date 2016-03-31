class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = [] 
    @@all << self   
  end

  def add_song(song)
    @songs << song
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
   if self.all.find {|artist| artist.name == name }
   else
     artist = Artist.new(name)
   end
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end


end