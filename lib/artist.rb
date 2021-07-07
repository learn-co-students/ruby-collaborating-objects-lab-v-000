class Artist
  @@all = Array.new

  attr_accessor :name
  attr_reader :songs
  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    result  = self.all.detect {|a| a.name == name}
    if result == nil
      artist = Artist.new(name)
      result = artist
      artist.save
    end
    result
  end

  def print_songs
    self.songs.each {|s| puts s.name}
  end

end
