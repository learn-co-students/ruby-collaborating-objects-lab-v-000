require 'pry'
class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
  @songs << song
  end
  
  def save
    @@all << self
    @@all.uniq! {|artist| artist.name}
    self
  end
  
  def self.find(name)
    artist = @@all.find do |artist|
      artist.name == name 
    end
    artist
  end
  
  def self.create(create_it)
    artist = Artist.new(create_it)
    artist.save
    artist
  end
  
  def self.find_or_create_by_name(name)
    found = self.find(name)
    if found
      return found
    else 
      created = self.create(name)
      return created
    end
  end
  
  def print_songs
    @songs.each do |song_object|
      puts song_object.name
    end
  end
  
end