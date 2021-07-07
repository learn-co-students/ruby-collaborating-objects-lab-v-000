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

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end

  def song_name
    self.songs.map {|song| song.name}
  end

  def print_songs
    puts "#{self.song_name.join("\n")}"
  end
end
