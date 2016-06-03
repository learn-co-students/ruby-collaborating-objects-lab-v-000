class Artist 

  attr_accessor :name 

  @@all = [] 

  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end

  def songs
    @songs
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all
  end

  def self.all
    @@all 
  end

  def self.find_or_create_by_name(name)
    if self.all.any? { |item| item.name == name } 
      else
      item = Artist.new(name)
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name 
    end
  end


end