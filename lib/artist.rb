class Artist
  attr_accessor :name, :artist, :all #, :save
    @@all = []

  def initialize(name)
     @name = name
     @songs = []
     self.save
  end

  def songs
     @songs
  end

  def add_song(song)
   # song.artist = self
    #song = Song.new(song)
    @songs << song
   # @@all << artist
  end

  def self.find_or_create_by_name(name)

    @@all.detect{|artist| artist.name == name} || Artist.new(name)

  end
#   def self.find_or_create_by_name(name)
#     if self.find(name)
#         self.find(name)
#      else
#         self.create(name)
#      end

#   end

# def self.find(name)
#     @@all.find do |artist|
#       #binding.pry
#         artist == name
#     end
# end

# def self.create(name)
#     artist = Artist.new(name)
#     #@@all << name
#     artist.save
#     artist

# end

  def self.all
    @@all
  end

  def save
   @@all << self # unless self.all.include?(self)
  end

  def print_songs
   songs.each do |song|
     puts song.name
   end

  end


end