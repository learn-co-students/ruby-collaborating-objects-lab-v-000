class Artist
  attr_accessor :name, :songs
@@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    if @@all.include?(self) == false
    @@all << self
    end
  end

  def self.find_or_create_by_name(name)
    artist = Artist.all.find {|a| a.name == name}
    if (artist == nil)
      artist = Artist.new(name)
      artist.save
      artist
    else
      artist
    end
  end

  def print_songs
    @songs.each {|s| puts s.name }
  end
end
