class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  # def self.create(name)
  #   new(name).tap { |a| a.save }
  # end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.find { |x| x.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    # self.find_by_name(name) || self.create(name)
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
