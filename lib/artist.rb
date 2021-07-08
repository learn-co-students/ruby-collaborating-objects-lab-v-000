class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def add_song_by_name(name)
    name = Song.new(name)
    name.artist = self
    @songs << name
    @@song_count += 1
    #return new song name at end of this method
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect {|x| x.name == name}
      self.all.detect {|x| x.name == name}
    else
      artist = Artist.new(name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end

end
