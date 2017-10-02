class Artist

  attr_accessor :name, :songs, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
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

  def self.find_or_create_by_name(artist)
    if self.all.detect {|person| person.name == artist}
      self.all.detect {|person| person.name == artist}
    else
      self.new(artist)
    end

  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end




end
