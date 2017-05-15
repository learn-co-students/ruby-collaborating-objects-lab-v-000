class Artist

  attr_accessor :name, :songs, :all

  @@all = [ ]


  def initialize(name)
    @name = name
    @songs = [ ]
  end


  def add_song(song)
    song.artist = self if !song.artist
    @songs << song
  end


  def self.find_by_name(name)
    @@all.find {|artist| artist if artist.name == name}
  end


  def self.create_by_name(name)
    Artist.new(name).tap {|artist| artist.save}
  end


  def self.find_or_create_by_name(name)
    Artist.find_by_name(name) ? Artist.find_by_name(name) : Artist.create_by_name(name)
  end


  def save
    @@all << self
  end


  def self.all
    @@all
  end


  def print_songs
    songs.each {|song| puts song.name}
  end

end
