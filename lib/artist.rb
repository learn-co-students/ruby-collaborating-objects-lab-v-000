class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.new(name)
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end


# Previous code

# class Artist
#   attr_accessor :name, :songs

#   @@all = []

#   def initialize(name)
#     self.name = name
#     self.songs = []
#     save
#   end

#   def add_song(song)
#     self.songs << song
#   end

#   def save
#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def self.find_or_create_by_name(name)
#     @@all.detect {|artist| artist.name == name} || Artist.new(name)
#   end

#   def print_songs
#     self.songs.each {|song| puts song.name}
#   end

# end