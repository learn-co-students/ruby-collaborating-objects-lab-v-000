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

  def add_song(new_song)
    @songs << new_song
  end

  def self.find_or_create_by_name(artist_name)
    artist_match = self.all.detect { |artist| artist_name == artist.name
    }
    if not artist_match
      artist_match = Artist.new(artist_name)
      artist_match.save
    end
    artist_match
  end

  def save
    @@all << self
  end


  def songs
    @songs
  end


  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end
