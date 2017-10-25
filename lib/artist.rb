class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name= name
    @songs = []
  end

  def add_song(song)
    @songs << song
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

  def self.find_or_create_by_name(name)
      if @@all.any? { |song| song.name == name }
         @@all.find { |song| song.name == name }
     else
        new_name = self.new(name)
        @@all << new_name
        @@all.last
      end
  end

  def print_songs
    @songs.each {|song| puts song.name }
  end

end
