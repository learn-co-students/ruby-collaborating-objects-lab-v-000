class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
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
    if find_by_name(name) == nil
      create_by_name(name)
    else
      find_by_name(name)
    end
  end

  def self.find_by_name(name)
    self.all.find{|artist| artist.name == name}
  end

  def self.create_by_name(name)
    self.new(name).tap{|artist| artist.save}
  end

  def print_songs
    songs.detect{|song| puts song.name}
  end
end
