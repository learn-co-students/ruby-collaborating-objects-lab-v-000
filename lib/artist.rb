class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name="")
    @songs = []
    @name = name
  end
  def add_song(song)
    songs << song
  end
  def save
      @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(artist_name)
    artist = @@all.detect{|instance| instance.name == artist_name}
    if artist.nil?
      artist = Artist.new(artist_name)
      artist.save
    end
    artist
  end
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
