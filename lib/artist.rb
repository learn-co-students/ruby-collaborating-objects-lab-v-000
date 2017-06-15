class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all.push(self)
  end

  def print_songs
    songs.each {|i| puts i.name}
  end

  def self.find(name)
    self.all.find {|i| i.name == name}
  end

  def self.find_or_create_by_name(artist)
    self.find(artist) ? self.find(artist) : self.create(artist)
  end

  def songs
    Song.find_by_artist(self)
  end

  def self.create(artist)
    self.new(artist).tap {|a| a.save}
  end
end
