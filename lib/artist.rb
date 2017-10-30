

class Artist
  attr_accessor :name, :songs
  @@artists = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
  end
  def self.find_or_create_by_name(name)
    artist = @@artists.select{|e| e.name == name}
    if artist.size > 0
      artist[0]
    else
      instance = Artist.new(name)
      instance.save
      instance
    end
  end
  def self.all
    @@artists
  end
  def save
    @@artists << self
  end
  def self.clear_list
    @@artists.clear
  end
  def print_songs
    @songs.each{|e|
      puts e.name
    }
  end
end
