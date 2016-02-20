require 'pry'
class Artist

  attr_accessor :name, :songs

@@all=[]

  def initialize (name)
    @name=name
    @songs=[]
   save
  end
  
  def save
    @@all<<self
  end

  def add_song (song)
     song.artist=self
     @songs<<song
  end

 def self.create_by_name(name)
   Artist.new(name)
    @@all.last
  end

def self.find_by_name(name)
  @@all.detect {|artist| artist.name==name}
end

def self.find_or_create_by_name(name)
  if Artist.find_by_name(name)!=nil
    Artist.find_by_name(name)
  else
    Artist.create_by_name(name)
  end
end

  def add_song_by_name(name, genre=nil)
    Song.new(name, genre)
    song.artist= self
    @songs<<song

  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
    end

 

end