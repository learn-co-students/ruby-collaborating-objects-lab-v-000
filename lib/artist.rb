class Artist
  attr_accessor :name, :songs
  @@all=[]

  def initialize(name)
  @name=name
  @songs=[]
  save
  end

  def add_song(song)
    @songs<<song
  end

  def save
    @@all<<self
  end

  def self.find_or_create_by_name(name)
  artist = @@all.find {|artist| artist.name == name}
  artist ? artist : Artist.new(name)
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
end


