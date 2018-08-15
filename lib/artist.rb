class Artist #artist has many songs
  @@all = []

attr_accessor :name
attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

def self.all #when you call a method self is the receiver of the method call
  @@all #we write it this way by convention as it is easier to extend the code beyond the module
end #returns all artists in the array

  def add_song(song)
   @songs << song
  end
            #instance methods signifies the receiver of an instance
  def save #save an artist, and instance method is used, we are saving an instance of artist
    @@all.push(self)
    self #when we save something, the thing just saved gets returned nto the entire array.
  end

  def self.find_or_create_by_name(name)
  self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
  end
end

  def self.create_by_name(name)
    artist = self.new(name).save
  end

  def print_songs
    @songs.each {|s| puts s.name }
  end
end
end
