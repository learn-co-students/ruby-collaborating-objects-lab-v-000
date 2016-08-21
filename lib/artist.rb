
class Artist
  attr_accessor :name
  @@songs
  @@all

  def initialize(name)
    @name = name
    @@songs = []
    @@all = []
  end

  def self.all
    @@songs << self
  end

  def save
      @@all << self.name
      @@all
  end

  def add_song(song)
    @@songs << song
  end

  def songs
    @@songs
  end

  def find_or_create_by_name(name)
    if @all.include?(name)
      name
    else
      self.new(name)
    end
  end

  def print_songs
    @@songs.each{ |song| puts song.name}
  end

end
