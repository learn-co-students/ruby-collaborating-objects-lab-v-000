class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
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

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist)
    @@all.each {|x|
        if x.name == artist
          return x
        end
      }
    art = self.new(artist)
    art.name = artist
    @@all << art
    art
  end

  def print_songs
    songs.each {|x|
      puts x.name
      }
  end

end

=begin
dirty_diana = Song.new("Dirty Diana")
billie_jean = Song.new("Billie Jean")
artist = Artist.new("MJ")
artist.add_song(dirty_diana)
artist.add_song(billie_jean)

artist.print_songs

print artist.inspect
=end