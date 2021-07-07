class Artist
attr_accessor  :songs,:name

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@artist << self
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|found_name| found_name.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) #!= nil
      self.find_by_name(name)
    else self.create(name)
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
