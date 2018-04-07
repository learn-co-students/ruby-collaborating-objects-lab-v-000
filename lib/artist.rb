
class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    end

  def add_song(song)
  @songs << song
  song.artist = self
  end

  def save # instance method b/c doesnt have self was called on the brett artist
  @@all << self
  end



  def self.all #class method b/c of the self
    @@all
  end

  def self.find_or_create_by_name(name)
      if found_artist = all.find {|artist| artist.name == name}
        found_artist
      else
      new_artist = self.new(name)
        new_artist.save
        new_artist
      end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end
