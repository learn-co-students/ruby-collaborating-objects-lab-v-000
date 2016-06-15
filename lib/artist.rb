

class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []


  end

  def self.all
    @@all
  end

  def name=(name)
    @name = name
  end
  def songs
    @songs

  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)

    self.all.detect do |artist_name|
      if artist_name.name == name
        found = artist_name
      else
        found = Artist.new(name)
      end
      found

    end

  end

  def add_song(song)
    @songs << song


  end
  def print_songs
    @songs.each do |song_name|
      puts song_name.name

    end
  end


end
