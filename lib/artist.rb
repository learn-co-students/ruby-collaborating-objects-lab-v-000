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
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if (@@all.detect {|artist_instance| artist_instance.name == name}).nil?
      new_artist_instance = self.new(name)
      @@all << new_artist_instance
      new_artist_instance
    else
      @@all.detect {|artist_instance| artist_instance.name == name}
    end
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
end
