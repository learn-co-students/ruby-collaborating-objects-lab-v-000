class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end



  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.new(name)
    end
  end

  def self.find_by_name(name)
   self.all.detect {|artist| artist.name == name}
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


  def save
    @@all << self unless @@all.include?(self)
  end


end
