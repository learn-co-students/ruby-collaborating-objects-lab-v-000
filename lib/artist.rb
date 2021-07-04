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
end

def self.create(name)
  artist = self.new(name)
  artist.save
  artist
end

def self.find_or_create_by_name(name)
  @@all.detect{|artist| artist.name == name} || self.create(name)
end

def print_songs
  songs.each {|song| puts song.name }
  # this lists all the songs out. you must use keyword puts becuase you
    # need to output the song names. so you don't need the 'do'
end



end
