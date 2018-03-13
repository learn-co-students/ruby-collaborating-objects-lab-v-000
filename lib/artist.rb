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

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    output = @@all.detect do |artist|
      artist.name == name
    end
    if output == nil
        output = Artist.new(name)
        output.save
    end
    return output
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
