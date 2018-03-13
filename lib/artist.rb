require 'pry'

class Artist
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def save
    #@@all << self
    @@all.push(self) unless @@all.include?(self)
  end

  def self.all
    #@@all.uniq
    @@all
    #binding.pry
  end

  # def self.find_or_create_by_name(name)
  #   @@all.collect do |artist_instance|
  #     if artist_instance.name.nil?
  #       artist = Artist.new(name)
  #       artist.save
  #       return artist
  #     else
  #       binding.pry
  #       return artist_instance
  #     end
  #   end
  # end

def self.find_or_create_by_name(name) 
  artist = Artist.all.find {|artist| artist.name == name} 
    if artist == nil 
      artist = Artist.new(name) 
      artist.save 
      artist 
    end 
end

  def print_songs
    @songs.collect do |song|
      puts song.name
    end
  end

end
