class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    #@@songs << Song.artist_name = self
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if (self.name.nil?)
      Artist.new(name)
    else
      @@all.find {|artist| artist.name = name}
    end
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
