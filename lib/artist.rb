class Artist

  attr_accessor :songs, :name

  @@all = [];

  def initialize(name)
    @name = name;
    @songs = [];
    self.save;
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.new(name);
  end

  def self.all
    @@all;
  end

  def self.find_by_name(name)
    @@all.detect { | artist | artist.name == name}
  end

  def save
    self.class.all << self;
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end

  def add_song(song)
    @songs << song;
  end

end
