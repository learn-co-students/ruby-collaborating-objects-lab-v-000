class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_reference)
    @songs << song_reference
  end

  def songs
    @songs
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name_string)
    @@all.detect { |a| a.name == name_string} || artist = Artist.new(name_string).save
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
