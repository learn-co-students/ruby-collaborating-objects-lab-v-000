class Artist
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize (name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name (name)
    result = nil
    @@all.each { |e| result = e if e.name == name }
    if result == nil
      artist = self.new(name)
      @@all << artist
      result = artist
    end
    result
  end

  def add_song (song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |e| puts e.name }
  end

end
