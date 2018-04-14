class Artist 
  attr_accessor :name, :songs, :song_name
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
  end  
  
  def self.all
    @@all
  end

  def add_song(song_name)
    song = Song.new(song_name)
    @songs << song.name
  end
 
  def save
    @@all << self
  end
 
  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    @@all.detect do |artist|
          #binding.pry 
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) 
      return find_by_name(name)
    else
      create_by_name(name)
    end
  end
 
  def print_songs
    @songs.each{|song| puts song.name}
  end
end 