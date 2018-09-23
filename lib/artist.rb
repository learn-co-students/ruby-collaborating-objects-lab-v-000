class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find{|artist| artist.name == name}
      @@all.find{|artist| artist.name == name}
    else
      artist = self.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end

end
