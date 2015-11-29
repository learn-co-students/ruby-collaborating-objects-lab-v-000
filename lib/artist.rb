class Artist
  # attr_reader :name
  attr_accessor :songs, :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    Artist.all << self 
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    artist ? artist : Artist.new(name)
  end

  def add_song(song_name)
    songs << song_name
  end

  def print_songs
    songs.each {|song| puts song}
  end

end
