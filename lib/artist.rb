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

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)  #look into how to make this better
    if self.all.detect{|a| a.name == artist_name} == nil
      artist = self.new(artist_name)
      artist.save
      artist
    else
      self.all.detect{|a| a.name == artist_name}
    end
  end

  def print_songs
    @songs.each{ |s|
      puts s.name
    }
  end

end
