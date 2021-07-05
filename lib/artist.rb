require 'pry'


class Artist 
  
  @@all = []
  
  attr_accessor :name, :songs

  
  def initialize(name)
    @name = name
    @songs = []
    
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def self.all 
    @@all 
  end
  
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    if self.all.find{|person| person.name == name} == nil
      artist = Artist.create(name) 
    else self.all.find{|person| person.name == name}
    end
  end 
  
  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
end

