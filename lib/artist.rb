class Artist
  attr_accessor :name, :song, :title

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
   @@all << self
 end

 def songs
   @songs
 end

 def self.find_by_name(name)
   @@all.find { |artist| artist.name == name }
 end

 def self.create_by_name(name)
   artist = self.new(name)
   @@all << artist
   artist
end

def self.find_or_create_by_name(name)
  self.find_by_name(name) || self.create_by_name(name)
end

 def print_songs
   @songs.each{|s| puts s.name}
 end

end
