require 'pry'


class Artist
  attr_accessor :name, :songs

  @@songs = []
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    
    @@all
  end

  def add_song(song)

    self.songs << song
  end

  def save
    @@all << self
    self
  end



  def self.find_by_name(artist_name)
    self.all.detect {|artist| artist.name == artist_name}
  end

  def self.create_by_name(name)
    artist = Artist.new(name)
    #artist.save
  end

   def self.find_or_create_by_name(name)
     self.find_by_name(name) || self.create_by_name(name)
   end


   def print_songs
     self.songs.each do |song|
       puts song.name
     end
   end



end
