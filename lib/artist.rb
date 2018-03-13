require 'pry'
class Artist

  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    #binding.pry
    match = self.all.find_index {|x|x.name==name}
    if match
      return self.all[match]
    else
      self.new(name)
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
  

end