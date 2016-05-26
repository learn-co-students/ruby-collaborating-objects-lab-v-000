require 'pry'
class Artist

#songs belong to artist
#artist can have many songs

  @@all = []
  
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = [] # song array for each artist is made when the artist is
    #self.save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.detect {|x| x.name == name}
      current_artist = @@all.detect {|x| x.name == name}
    else
      current_artist = Artist.new(name)
    end
    current_artist   
  end

    # if !@@all.detect {|x| x.name==name}       
    #   Artist.new(name) 
    # end
    #@@all << new_artist

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each {|x| puts x.name}
  end


end
