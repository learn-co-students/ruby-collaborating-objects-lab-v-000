class Artist
  attr_accessor :name, :songs
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    @songs << song
  end
  #class finder/constructor
  def self.find_or_create_by_name(name)
    artist_instance = self.all.find{|artist| artist.name == name}
    if artist_instance == nil
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    else
      artist_instance
    end
    # condition to check ? what happens if condition is true : what happens if condition is false
  end
  def print_songs
    @songs.each {|song| puts song.name}
  end

end
