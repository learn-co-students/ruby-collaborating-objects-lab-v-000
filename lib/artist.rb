class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
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

  def self.find_or_create_by_name(artist)
    if found = @@all.find {|a| a.name == artist}
      found
    else
      new_artist = self.new(artist)
      new_artist.save
      new_artist
    end
  end

  def print_songs
      @songs.each {|s| puts s.name}
  end

end
