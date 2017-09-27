class Artist
  attr_accessor :name, :song
  @@all = []
  @@names = []

  def initialize(name)
    @name = name
    @@names << name
    @songs = []
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

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    result = nil
    if self.all.find do |act_name|
        act_name.name == name
        result = act_name
      end
    else
      result = self.new(name)
    end
    result
  end

  def print_songs
    @songs.each {|index| puts index.name}
  end
end
