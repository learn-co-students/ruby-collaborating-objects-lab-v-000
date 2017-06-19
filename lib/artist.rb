class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end



  def self.find_or_create_by_name(name)
    search_for_artist = @@all.detect { |artist| artist.name == name }
    if search_for_artist != nil
      search_for_artist
    else
      artist = Artist.new(name)
      @@all << artist
      artist
    end
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

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
