class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find do |artist|
      name == artist.name
    end
    if artist.nil?
      artist = Artist.new(name)
      artist.save
    end
    artist
  end

  def print_songs
    puts self.songs.map{|song| song.name}
  end

end