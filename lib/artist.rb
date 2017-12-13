class Artist

  attr_accessor :name

  @@all = []
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
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
    if @@all.detect{|artist| artist.name == name}
      @@all.detect{|artist| artist.name == name}
    else
      artist = Artist.new(name)
      @@all << artist
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end


## REFERENCED LABS
## ruby-advanced-class-methods-lab-v-000  || ruby-class-variables-and-class-methods-lab-v-000
## ruby-objects-has-many-lab-v-000
