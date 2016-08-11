
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save   
  end 

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
 
   def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.create_by_name(name)
    self.new(name)
  end

  def self.find_or_create_by_name(name)
    find_by_name(name) || create_by_name(name)
  end


  def print_songs
    @songs.each {|song| puts song.name}
  end

end


















































# class Artist
#   attr_accessor :name, :song
#   @@all = []

#   def initialize(name)
#     @name = name
#     @songs = []
#     self.save
#   end

#   def save
#     self.class.all << self
#   end

#   def self.all
#     @@all
#   end

#   def songs
#     @songs
#   end

#   def find_or_create_by_name(name)
#   end

#   def add_song(name)
#     @songs << song
#   end
# end