class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name=name
    @songs = []
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

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    test = nil
    @@all.each do |artist|
      if artist.name == name
        test = artist
      end
    end
    if test == nil
      self.create(name)
    else
      test
    end
  end

  def self.create(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def print_songs
    songs.each do |element|
      puts element.name
    end
  end
end
