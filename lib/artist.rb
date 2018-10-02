require 'pry'
class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_one)
    self.songs << song_one
    # @songs << song_one - means the same as line above
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(artist_1)
    array = Artist.find.all do {|artist| name == artist_1}
      binding.pry
    array = artist_1 || Artist.create_by_name(artist_1)
    new_artist = self.new(artist_1)
    new_artist
    end
  end





end
