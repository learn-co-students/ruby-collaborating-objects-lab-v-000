class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self

  end

  def save
    @@all << self
 
  end

  def self.all
    @@all

  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name)

  end

  # def self.find_by_name(name)
  #   self.all.detect { |a| a.name == name }
  #
  # end
  #
  # def self.create_by_name(name)
  #   Artist.new(name)
  #
  # end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end

  end

end
