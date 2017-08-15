# Artist
#   #initialize with #name
#     accepts a name for the artist
#   #name=
#     sets the artist name
#   #songs
#     keeps track of an artist's songs
#   #save
#     adds the artist instance to the @@all class variable
#   .find_or_create_by_name
#     finds or creates an artist by name maintaining uniqueness of objects by name property
#     Creates new instance of Artist if none exist
#   #print_songs
#     lists all of the artist's songs

class Artist
  attr_accessor :name, :all

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    does_artist_exist = self.all.detect do |artist|
      artist.name == name
    end
    if does_artist_exist == nil
      does_artist_exist = Artist.new(name)
      does_artist_exist.save
      does_artist_exist
    else
      does_artist_exist
    end
  end

  def print_songs
    @songs.map do |song|
      puts song.name
    end
  end
#
#
#
#
end
