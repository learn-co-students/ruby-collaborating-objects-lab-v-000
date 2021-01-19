require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []


  def self.all
    @@all
  end

  def self.find_by_name(artist_name)
    self.all.detect {|x| x if x.name = artist_name}
  end

    def self.find_or_create_by_name(artist_name)
      if self.find_by_name(artist_name).nil?
        Artist.new(artist_name).save
      else
        self.find_by_name(artist_name)
      end
    end


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    self
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
