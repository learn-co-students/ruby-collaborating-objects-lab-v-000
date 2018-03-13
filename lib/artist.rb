class Artist

  attr_accessor :name
  @@all = []
  @@name = []

  def initialize(name)
    @name = name
    @songs = []
    @@name << name
    @songnames = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@name.detect(name)
      @@all[0]
    else
      Artist.new(name)
    end

  end

  def print_songs
    puts @songnames
  end


  def add_song(song)
    @songs << song
    @songnames << song.name
  end



end
