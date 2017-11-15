class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end



  def add_song(song)
      @songs << song unless @songs.include?(song)
      song.artist=(self) unless song.artist == self
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

  def self.find_or_create_by_name(artist_name)
    artist = @@all.detect {|artist| artist.name == artist_name}
    if !artist
        artist = self.new(artist_name)
        artist.save
        artist
      else
        artist
      end
  end

  def print_songs
    self.songs.collect do |song|
      puts song.name.to_s
    end
  end

end
