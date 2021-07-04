class Artist
    attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    song.artist = self
      @songs << song unless @songs.include?(song)
  end

  def self.all
    @@all
  end

  def save
  	@@all << self
  end

  def self.find_or_create_by_name(artist_name)
    self.all.detect {|artist| artist.name == artist_name} || self.new(artist_name)
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end