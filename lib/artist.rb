#create class Artist

class Artist

#class variable @@all - adds artist instance to empty array

@@all = []
#initialize with name, therefore include attr_accessor

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    #songs keeps track of artist songs, empty array, related to class song
    @songs = []
  end

  #define method add_song that keeps track of song

  def add_song(song)
    @songs << song
  end

#save method adds each artist instance to class variable
  def save
    @@all << self
  end

#returns class variable with each artist insance
  def self.all
    @@all
  end

#class method that finds artist or creates new artist if unique
#find and detect are the same enumerators
#creates new artist and adds to class variable
  def self.find_or_create_by_name(name)
    if @@all.find {|new_name| new_name.name == name}
      @@all.find {|new_name| new_name.name == name}
    else
      add_artist = self.new(name)
      @@all << add_artist
      add_artist
    end
  end

#print out artists songs (puts)

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
