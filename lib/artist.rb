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

  def add_song(song)
    @songs << song
  end

  def save #instance method
    @@all << self
  end

  def self.find_or_create_by_name(artist_name)#class method
    if self.all.detect {|artist| artist.name == artist_name}
      self.all.detect {|artist| artist.name == artist_name}
    else
      self.new(artist_name)
    end
  end

  def print_songs
    songs.each do |song| puts song.name
    end
  end
end
