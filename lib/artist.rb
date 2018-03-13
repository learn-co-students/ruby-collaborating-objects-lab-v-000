class Artist
  
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
    self.save
  end
  
  def self.find_or_create_by_name(name)
    found_artist = @@all.find { |artist|  artist.name == name}
    if found_artist
      found_artist
    else
      found_artist = self.new(name)
    end
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all.include?(self) ? @@all : @@all << self
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end

  def self.all
    @@all    
  end
  
end