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

  def add_song(song)
    @songs << song
end

  def save
   @@all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    @@all.detect {|artist| artist.name == name}
  end

  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    return new_artist
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      return self.find(name)
    else
      self.create(name)
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end


end
