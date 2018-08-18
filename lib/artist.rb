# class Artist
#   attr_accessor :name
#   attr_reader :songs
#   def initialize(name)
#     @name = name
#     @songs = []
#   end

#   @@all = []

#   def self.all
#     @@all
#   end

#   def self.find_or_create_by_name(name)
#     self.find_by_name(name) || self.create_by_name(name)
#   end

#   def self.find_by_name(name)
#     @@all.detect do |artist|
#       artist.name == name
#     end
#   end

#   def self.create_by_name(name)
#     self.new(name).save
#   end

#   def add_song(song)
#     @songs.push(song) unless @songs.include?(song)
#     song.artist = self unless song.artist == self
#   end

#   def save
#     @@all.push(self)
#     self
#   end

#   def print_songs
#     @songs.each {|s| puts s.name }
#   end

# end


class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all= []
  
  
  def initialize(name)
    @name = name
    @songs = [] # a given artist should start, or be initialized, with a songs collection that is empty. Then a method will be written that adds songs to that collection - def add_song(song).
  end
  
# to keep track of an artist's songs:    
 
  def add_song(song)
    @songs.push(song)
  end

# to add the artist instance to the @@all class variable

  def self.all
    @@all
  end
  
  def save
    @@all.push(self)
    self
  end
 
  def self.create_by_name(artist_name)
    self.new(artist_name).save
  end 
  
  
  def self.find_by_name(artist_name)
    @@all.detect{|a| a.name == artist_name}
  end 
  
  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end 
  
  def print_songs
    @songs.map do |s|
      puts "#{s.name}"
    end
  end
end