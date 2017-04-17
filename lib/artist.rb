class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.find_or_create_by_name(new_name)
     if new_name.instance_of? self
       artist = self.new(new_name)
       self.save
    else
      self
    end
  end

  def add_song(song)
    @songs << song
#    Song.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each { |s|
      puts s.name}
  end

  def self.all
   @@all
  end
end
