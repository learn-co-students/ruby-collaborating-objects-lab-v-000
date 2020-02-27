class Artist
  attr_accessor :name, :songs
  @@all=[]

  def initialize(name)
    @name = name
    @songs = []
    save
  end



=begin
  def self.create(name)
    artist = self.new(name)
       artist
  end
=end

  def self.find(name)
    @@all.find{ |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find(name) ||  self.new(name)
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
  @songs.each{|s|puts s.name}

 end
  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end
end
