class Artist
  @@all = []
  attr_accessor :name, :songs

  def save
    @@all << self
  end

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    dtct = @@all.detect {|artist| artist.name == name}
    if dtct == nil
      Artist.new(name)
    else
      return dtct
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end


end
