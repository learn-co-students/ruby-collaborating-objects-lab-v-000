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

  def self.all
    @@all
  end

  def save
    @@all << self
    return self
  end

  def self.find_or_create_by_name(name)
    @@all.collect do |artist|
      if artist.name == name
        return artist
      end
    end
    artist = Artist.new(name)
    artist.save
  end


  def add_song(song)
    @songs << song
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
  #artist songs goes through the loop and gets the song's name from the object

end
