class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @songs = []
    @@all << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.all.each do |artist|
      return if artist.name == name
    end
    Artist.new(name)
  end

  def print_songs
    @songs.each {|song| puts song}
  end

end