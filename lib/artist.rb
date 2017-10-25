class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
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

  def songs
    @songs
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.find_or_create_by_name(name)
    if self.all.any? {|a| a.name == name}
      artist_name = self.all.select {|a| a.name == name }
      artist_name[0]
    else
      Artist.new(name)
    end
  end
end
