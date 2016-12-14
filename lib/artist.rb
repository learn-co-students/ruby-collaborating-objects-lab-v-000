class Artist

  attr_accessor :name

  @@all = []
  

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name) 
      stored_artist = nil
      @@all.each do |x|
        if x.name = name
          return x
        end
      end
      Artist.new(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end




end