class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    instance = @@all.detect {|artist| artist.name == name}
    if instance.nil?
      Artist.new(name).tap {|artist| artist.save} 
    else
      instance
    end
  end

  def print_songs
    @songs.each {|song| print "#{song.name}\n"}
  end
end
