#Artist
  #initialize with #name
  #  accepts a name for the artist (FAILED - 1)
  #name=
  #  sets the artist name (FAILED - 2)
  #songs
  #  keeps track of an artist's songs (FAILED - 3)
  #save
  #  adds the artist instance to the @@all class variable (FAILED - 4)
  #.find_or_create_by_name
  #  finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 5)
  #  Creates new instance of Artist if none exist (FAILED - 6)
  #print_songs
  #  lists all of the artist's songs (FAILED - 7)

class Artist

  attr_accessor :name, :songs

  @@all = []


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @songs
  end

  def self.all
    @@all
  end


  def save
    @@all << self
  end


  def print_songs
    @songs.each do |i|
      puts i.name
    end
  end

  def self.find_or_create_by_name(name)
    if @@all.detect { |a| a.name == name }
       @@all.detect { |a| a.name == name }
     else
       created_by_name = new(name)
       created_by_name.save
       created_by_name
     end
   end

end
