class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    if @@all.detect{|artist| artist.name == name}
      self
    else
      self.new(name).save
    end
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end

end
